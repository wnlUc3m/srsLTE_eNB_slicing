/**
 *
 * \section COPYRIGHT
 *
 * Copyright 2013-2017 Software Radio Systems Limited
 *
 * \section LICENSE
 *
 * This file is part of srsLTE.
 *
 * srsUE is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version.
 *
 * srsUE is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * A copy of the GNU Affero General Public License can be found in
 * the LICENSE file in the top-level directory of this distribution
 * and at http://www.gnu.org/licenses/.
 *
 */

#include "upper/pdcp.h"
#include <inttypes.h>
#include <sstream>
#include <inttypes.h>

namespace srsenb {
  
void pdcp::init(rlc_interface_pdcp* rlc_, rrc_interface_pdcp* rrc_, gtpu_interface_pdcp* gtpu_[], srslte::log* pdcp_log_)
{
  rlc   = rlc_; 
  rrc   = rrc_; 
  //gtpu  = gtpu_;
  for (int slice = 0; slice < NUM_SLICES; ++slice){
    gtpu[slice] = gtpu_[slice];
  }
  log_h = pdcp_log_;
  
  pool = srslte::byte_buffer_pool::get_instance();
}

void pdcp::stop()
{
  for(std::map<uint32_t, user_interface>::iterator iter=users.begin(); iter!=users.end(); ++iter) {
    rem_user((uint32_t) iter->first);
  }
  users.clear();
}

void pdcp::add_user(uint16_t rnti)
{
  if (users.count(rnti) == 0) {
    srslte::pdcp *obj = new srslte::pdcp;     
    obj->init(&users[rnti].rlc_itf, &users[rnti].rrc_itf, &users[rnti].gtpu_itf, log_h, SECURITY_DIRECTION_DOWNLINK);
    users[rnti].rlc_itf.rnti  = rnti;
    users[rnti].gtpu_itf.rnti = rnti;
    users[rnti].rrc_itf.rnti  = rnti;
    
    users[rnti].rrc_itf.rrc   = rrc;
    users[rnti].rlc_itf.rlc   = rlc;
    //FIXME: En base al identificador del slice
    for(int slice = 0; slice < NUM_SLICES; ++slice){
      users[rnti].gtpu_itf.gtpu[slice] = gtpu[slice];
    }
    //users[rnti].gtpu_itf.gtpu = gtpu[0];
    users[rnti].pdcp = obj;
  }
}

void pdcp::rem_user(uint16_t rnti)
{
  if (users.count(rnti)) {
    users[rnti].pdcp->stop();
    delete users[rnti].pdcp; 
    users[rnti].pdcp = NULL;
    users.erase(rnti);
  }
}

void pdcp::add_bearer(uint16_t rnti, uint32_t lcid, LIBLTE_RRC_PDCP_CONFIG_STRUCT* cnfg)
{
  if (users.count(rnti)) {
    users[rnti].pdcp->add_bearer(lcid, cnfg);
  }
}


void pdcp::reset(uint16_t rnti)
{
  if (users.count(rnti)) {
    users[rnti].pdcp->reset();
  }
}

void pdcp::config_security(uint16_t rnti, uint32_t lcid, uint8_t* k_rrc_enc_, uint8_t* k_rrc_int_, 
                           srslte::CIPHERING_ALGORITHM_ID_ENUM cipher_algo_, 
                           srslte::INTEGRITY_ALGORITHM_ID_ENUM integ_algo_)
{
  if (users.count(rnti)) {
    users[rnti].pdcp->config_security(lcid, k_rrc_enc_, k_rrc_int_, cipher_algo_, integ_algo_);
  }
}

void pdcp::write_pdu(uint16_t rnti, uint32_t lcid, srslte::byte_buffer_t* sdu)
{
  if (users.count(rnti)) {
    users[rnti].pdcp->write_pdu(lcid, sdu);
  } else {
    pool->deallocate(sdu);
  }
}

void pdcp::write_sdu(uint16_t rnti, uint32_t lcid, srslte::byte_buffer_t* sdu)
{
  if (users.count(rnti)) {
    users[rnti].pdcp->write_sdu(lcid, sdu);
  } else {
    pool->deallocate(sdu);
  }
}

void pdcp::store_assigned_ip(uint16_t rnti, std::string ip, int core){
  users[rnti].gtpu_itf.store_assigned_ip(ip, core);
}

void pdcp::user_interface_gtpu::write_pdu(uint32_t lcid, srslte::byte_buffer_t *pdu)
{
  std::string str_dst_ip;
  std::stringstream sstm;
  sstm << static_cast<int>(pdu->msg[12]) << "." << static_cast<int>(pdu->msg[13]) << "." << static_cast<int>(pdu->msg[14]) << "." << static_cast<int>(pdu->msg[15]);
  str_dst_ip = sstm.str();

  gtpu[src_ip_to_net_core[str_dst_ip]]->write_pdu(rnti, lcid, pdu);
}

void pdcp::user_interface_gtpu::store_assigned_ip(std::string ip, int core){
  src_ip_to_net_core[ip] = core;
}

void pdcp::user_interface_rlc::write_sdu(uint32_t lcid, srslte::byte_buffer_t* sdu)
{
  rlc->write_sdu(rnti, lcid, sdu);
}

void pdcp::user_interface_rrc::write_pdu(uint32_t lcid, srslte::byte_buffer_t* pdu)
{
  rrc->write_pdu(rnti, lcid, pdu);
}

void pdcp::user_interface_rrc::write_pdu_bcch_bch(srslte::byte_buffer_t* pdu)
{
  fprintf(stderr, "Error: Received BCCH from ue=%d\n", rnti);
}

void pdcp::user_interface_rrc::write_pdu_bcch_dlsch(srslte::byte_buffer_t* pdu)
{
  fprintf(stderr, "Error: Received BCCH from ue=%d\n", rnti);
}

void pdcp::user_interface_rrc::write_pdu_pcch(srslte::byte_buffer_t* pdu)
{
  fprintf(stderr, "Error: Received PCCH from ue=%d\n", rnti);
}
  
  
}
