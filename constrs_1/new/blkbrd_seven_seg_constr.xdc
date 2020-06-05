# Constraints for CLK
set_property PACKAGE_PIN H16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -name external_clock -period 10.00 [get_ports clk]
# Constraints for SW0
set_property PACKAGE_PIN R17 [get_ports {val0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val0[0]}]
# Constraints for SW1
set_property PACKAGE_PIN U20 [get_ports {val0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val0[1]}]
# Constraints for SW2
set_property PACKAGE_PIN R16 [get_ports {val0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val0[2]}]
# Constraints for SW3
set_property PACKAGE_PIN N16 [get_ports {val0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val0[3]}]
# Constraints for SW4
set_property PACKAGE_PIN R14 [get_ports {val1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val1[0]}]
# Constraints for SW5
set_property PACKAGE_PIN P14 [get_ports {val1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val1[1]}]
# Constraints for SW6
set_property PACKAGE_PIN L15 [get_ports {val1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val1[2]}]
# Constraints for SW7
set_property PACKAGE_PIN M15 [get_ports {val1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val1[3]}]
# Constraints for SW8
set_property PACKAGE_PIN T10 [get_ports {val2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val2[0]}]
# Constraints for SW9
set_property PACKAGE_PIN T12 [get_ports {val2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val2[1]}]
# Constraints for SW10
set_property PACKAGE_PIN T11 [get_ports {val2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val2[2]}]
# Constraints for SW11
set_property PACKAGE_PIN T14 [get_ports {val2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val2[3]}]
# Constraints for SW12 (actually, BTN0)
set_property PACKAGE_PIN W14 [get_ports {val3[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val3[0]}]
# Constraints for SW13 (actually, BTN1)
set_property PACKAGE_PIN W13 [get_ports {val3[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val3[1]}]
# Constraints for SW14 (actually, BTN2)
set_property PACKAGE_PIN P15 [get_ports {val3[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val3[2]}]
# Constraints for SW15 (actually, BTN3)
set_property PACKAGE_PIN M14 [get_ports {val3[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val3[3]}]
# Constraints for CA
set_property PACKAGE_PIN K14 [get_ports {ca}]
set_property IOSTANDARD LVCMOS33 [get_ports {ca}]
# Constraints for CB
set_property PACKAGE_PIN H15 [get_ports {cb}]
set_property IOSTANDARD LVCMOS33 [get_ports {cb}]
# Constraints for CC
set_property PACKAGE_PIN J18 [get_ports {cc}]
set_property IOSTANDARD LVCMOS33 [get_ports {cc}]
# Constraints for CD
set_property PACKAGE_PIN J15 [get_ports {cd}]
set_property IOSTANDARD LVCMOS33 [get_ports {cd}]
# Constraints for CE
set_property PACKAGE_PIN M17 [get_ports {ce}]
set_property IOSTANDARD LVCMOS33 [get_ports {ce}]
# Constraints for CF
set_property PACKAGE_PIN J16 [get_ports {cf}]
set_property IOSTANDARD LVCMOS33 [get_ports {cf}]
# Constraints for CG
set_property PACKAGE_PIN H18 [get_ports {cg}]
set_property IOSTANDARD LVCMOS33 [get_ports {cg}]
# Constraints for DP
set_property PACKAGE_PIN K18 [get_ports dp]
set_property IOSTANDARD LVCMOS33 [get_ports dp]
# Constraints for AN0
set_property PACKAGE_PIN K19 [get_ports {an0}]
set_property IOSTANDARD LVCMOS33 [get_ports {an0}]
# Constraints for AN1
set_property PACKAGE_PIN H17 [get_ports {an1}]
set_property IOSTANDARD LVCMOS33 [get_ports {an1}]
# Constraints for AN2
set_property PACKAGE_PIN M18 [get_ports {an2}]
set_property IOSTANDARD LVCMOS33 [get_ports {an2}]
# Constraints for AN3
set_property PACKAGE_PIN L16 [get_ports {an3}]
set_property IOSTANDARD LVCMOS33 [get_ports {an3}]
