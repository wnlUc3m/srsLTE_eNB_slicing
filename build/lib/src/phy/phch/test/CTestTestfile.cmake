# CMake generated Testfile for 
# Source directory: /home/cdonato/srsLTE_oaiCore/lib/src/phy/phch/test
# Build directory: /home/cdonato/srsLTE_oaiCore/build/lib/src/phy/phch/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(pbch_test_6 "pbch_test" "-p" "1" "-n" "6" "-c" "100")
ADD_TEST(pbch_test_62 "pbch_test" "-p" "2" "-n" "6" "-c" "100")
ADD_TEST(pbch_test_64 "pbch_test" "-p" "4" "-n" "6" "-c" "100")
ADD_TEST(pbch_test_50 "pbch_test" "-p" "1" "-n" "50" "-c" "50")
ADD_TEST(pbch_test_502 "pbch_test" "-p" "2" "-n" "50" "-c" "50")
ADD_TEST(pbch_test_504 "pbch_test" "-p" "4" "-n" "50" "-c" "50")
ADD_TEST(pcfich_test_6 "pcfich_test" "-p" "1" "-n" "6")
ADD_TEST(pcfich_test_62 "pcfich_test" "-p" "2" "-n" "6")
ADD_TEST(pcfich_test_64 "pcfich_test" "-p" "4" "-n" "6")
ADD_TEST(pcfich_test_10 "pcfich_test" "-p" "1" "-n" "10")
ADD_TEST(pcfich_test_102 "pcfich_test" "-p" "2" "-n" "10")
ADD_TEST(pcfich_test_104 "pcfich_test" "-p" "4" "-n" "10")
ADD_TEST(phich_test_6 "phich_test" "-p" "1" "-n" "6")
ADD_TEST(phich_test_62 "phich_test" "-p" "2" "-n" "6")
ADD_TEST(phich_test_64 "phich_test" "-p" "4" "-n" "6" "-g" "1/6")
ADD_TEST(phich_test_6e "phich_test" "-p" "1" "-n" "6" "-e")
ADD_TEST(phich_test_62e "phich_test" "-p" "2" "-n" "6" "-e" "-l")
ADD_TEST(phich_test_64e "phich_test" "-p" "4" "-n" "6" "-e" "-l" "-g" "2")
ADD_TEST(phich_test_10 "phich_test" "-p" "1" "-n" "10" "-e")
ADD_TEST(phich_test_102 "phich_test" "-p" "2" "-n" "10" "-g" "2")
ADD_TEST(phich_test_104 "phich_test" "-p" "4" "-n" "10" "-e" "-l" "-g" "1/2")
ADD_TEST(pdcch_test "pdcch_test")
ADD_TEST(pdsch_test_qpsk "pdsch_test" "-m" "10" "-n" "50" "-r" "1")
ADD_TEST(pdsch_test_qam16 "pdsch_test" "-m" "20" "-n" "100" "-r" "2")
ADD_TEST(pdsch_test_qam64 "pdsch_test" "-m" "28" "-n" "100")
ADD_TEST(pbch_file_test "pbch_file_test" "-i" "/home/cdonato/srsLTE_oaiCore/lib/src/phy/phch/test/signal.1.92M.dat")
ADD_TEST(pcfich_file_test "pcfich_file_test" "-c" "150" "-n" "50" "-p" "2" "-i" "/home/cdonato/srsLTE_oaiCore/lib/src/phy/phch/test/signal.10M.dat")
ADD_TEST(phich_file_test "phich_file_test" "-c" "150" "-n" "50" "-p" "2" "-i" "/home/cdonato/srsLTE_oaiCore/lib/src/phy/phch/test/signal.10M.dat")
ADD_TEST(pdcch_file_test "pdcch_file_test" "-c" "1" "-f" "3" "-n" "6" "-p" "1" "-i" "/home/cdonato/srsLTE_oaiCore/lib/src/phy/phch/test/signal.1.92M.amar.dat")
ADD_TEST(pdsch_pdcch_file_test "pdsch_pdcch_file_test" "-c" "1" "-f" "3" "-n" "6" "-p" "1" "-i" "/home/cdonato/srsLTE_oaiCore/lib/src/phy/phch/test/signal.1.92M.amar.dat")
ADD_TEST(pusch_test "pusch_test")
ADD_TEST(pucch_test "pucch_test")
ADD_TEST(prach "prach_test")
ADD_TEST(prach_256 "prach_test" "-N" "256")
ADD_TEST(prach_512 "prach_test" "-N" "512")
ADD_TEST(prach_1024 "prach_test" "-N" "1024")
ADD_TEST(prach_1536 "prach_test" "-N" "1536")
ADD_TEST(prach_2048 "prach_test" "-N" "2048")
ADD_TEST(prach_f0 "prach_test" "-f" "0")
ADD_TEST(prach_f1 "prach_test" "-f" "1")
ADD_TEST(prach_f2 "prach_test" "-f" "2")
ADD_TEST(prach_f3 "prach_test" "-f" "3")
ADD_TEST(prach_rs1 "prach_test" "-r" "1")
ADD_TEST(prach_rs2 "prach_test" "-r" "2")
ADD_TEST(prach_rs3 "prach_test" "-r" "3")
ADD_TEST(prach_zc0 "prach_test" "-z" "0")
ADD_TEST(prach_zc2 "prach_test" "-z" "2")
ADD_TEST(prach_zc3 "prach_test" "-z" "3")
ADD_TEST(prach_test_multi "prach_test_multi")
ADD_TEST(prach_test_multi_n32 "prach_test_multi" "-n" "32")
ADD_TEST(prach_test_multi_n16 "prach_test_multi" "-n" "16")
ADD_TEST(prach_test_multi_n8 "prach_test_multi" "-n" "8")
ADD_TEST(prach_test_multi_n4 "prach_test_multi" "-n" "4")
