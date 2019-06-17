-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_1_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_img_in_AWVALID : OUT STD_LOGIC;
    m_axi_img_in_AWREADY : IN STD_LOGIC;
    m_axi_img_in_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_img_in_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_img_in_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_img_in_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_img_in_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_img_in_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_img_in_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_img_in_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_img_in_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_img_in_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_img_in_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_img_in_WVALID : OUT STD_LOGIC;
    m_axi_img_in_WREADY : IN STD_LOGIC;
    m_axi_img_in_WDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_img_in_WSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_img_in_WLAST : OUT STD_LOGIC;
    m_axi_img_in_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_img_in_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_img_in_ARVALID : OUT STD_LOGIC;
    m_axi_img_in_ARREADY : IN STD_LOGIC;
    m_axi_img_in_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_img_in_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_img_in_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_img_in_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_img_in_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_img_in_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_img_in_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_img_in_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_img_in_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_img_in_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_img_in_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_img_in_RVALID : IN STD_LOGIC;
    m_axi_img_in_RREADY : OUT STD_LOGIC;
    m_axi_img_in_RDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    m_axi_img_in_RLAST : IN STD_LOGIC;
    m_axi_img_in_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_img_in_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_img_in_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_img_in_BVALID : IN STD_LOGIC;
    m_axi_img_in_BREADY : OUT STD_LOGIC;
    m_axi_img_in_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_img_in_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_img_in_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    img_in_offset : IN STD_LOGIC_VECTOR (31 downto 0);
    img_out_offset : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of Loop_1_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (16 downto 0) := "00000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (16 downto 0) := "00000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (16 downto 0) := "00000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (16 downto 0) := "00000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (16 downto 0) := "00000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (16 downto 0) := "00000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (16 downto 0) := "00001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (16 downto 0) := "00010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (16 downto 0) := "00100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (16 downto 0) := "01000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (16 downto 0) := "10000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv16_A53C : STD_LOGIC_VECTOR (15 downto 0) := "1010010100111100";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal img_in_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal img_in_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal img_in_blk_n_AW : STD_LOGIC;
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal img_in_blk_n_W : STD_LOGIC;
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal img_in_blk_n_B : STD_LOGIC;
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal sext_cast_fu_101_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal sext_cast_reg_160 : STD_LOGIC_VECTOR (32 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal sext6_cast_fu_105_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal sext6_cast_reg_165 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fu_115_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_reg_173 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal img_in_addr_reg_178 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_i_fu_109_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal img_in_addr_1_reg_184 : STD_LOGIC_VECTOR (31 downto 0);
    signal img_in_addr_read_reg_190 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_2_i_fu_155_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_2_i_reg_195 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_ioackin_m_axi_img_in_AWREADY : STD_LOGIC;
    signal i_0_i_i_reg_90 : STD_LOGIC_VECTOR (15 downto 0);
    signal sum3_cast_fu_130_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sum9_cast_fu_145_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_m_axi_img_in_ARREADY : STD_LOGIC := '0';
    signal ap_sig_ioackin_m_axi_img_in_ARREADY : STD_LOGIC;
    signal ap_reg_ioackin_m_axi_img_in_AWREADY : STD_LOGIC := '0';
    signal ap_reg_ioackin_m_axi_img_in_WREADY : STD_LOGIC := '0';
    signal ap_sig_ioackin_m_axi_img_in_WREADY : STD_LOGIC;
    signal tmp_1_i_cast_fu_121_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal sum3_fu_125_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal sum9_fu_140_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (16 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_109_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ioackin_m_axi_img_in_ARREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_m_axi_img_in_ARREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    if ((ap_sig_ioackin_m_axi_img_in_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_img_in_ARREADY <= ap_const_logic_0;
                    elsif ((m_axi_img_in_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_img_in_ARREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ioackin_m_axi_img_in_AWREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_m_axi_img_in_AWREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                    if ((ap_sig_ioackin_m_axi_img_in_AWREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_img_in_AWREADY <= ap_const_logic_0;
                    elsif ((m_axi_img_in_AWREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_img_in_AWREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ioackin_m_axi_img_in_WREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_m_axi_img_in_WREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                    if ((ap_sig_ioackin_m_axi_img_in_WREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_img_in_WREADY <= ap_const_logic_0;
                    elsif ((m_axi_img_in_WREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_img_in_WREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_i_reg_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((m_axi_img_in_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state17))) then 
                i_0_i_i_reg_90 <= i_reg_173;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_i_i_reg_90 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_173 <= i_fu_115_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_109_p2 = ap_const_lv1_0))) then
                img_in_addr_1_reg_184 <= sum9_cast_fu_145_p1(32 - 1 downto 0);
                img_in_addr_reg_178 <= sum3_cast_fu_130_p1(32 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((m_axi_img_in_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                img_in_addr_read_reg_190 <= m_axi_img_in_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                sext6_cast_reg_165 <= sext6_cast_fu_105_p1;
                sext_cast_reg_160 <= sext_cast_fu_101_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state11) and (ap_sig_ioackin_m_axi_img_in_AWREADY = ap_const_logic_1))) then
                tmp_2_i_reg_195 <= tmp_2_i_fu_155_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, m_axi_img_in_RVALID, m_axi_img_in_BVALID, ap_CS_fsm_state3, ap_CS_fsm_state10, ap_CS_fsm_state11, ap_CS_fsm_state12, ap_CS_fsm_state17, ap_CS_fsm_state2, tmp_i_fu_109_p2, ap_sig_ioackin_m_axi_img_in_AWREADY, ap_sig_ioackin_m_axi_img_in_ARREADY, ap_sig_ioackin_m_axi_img_in_WREADY)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_109_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_sig_ioackin_m_axi_img_in_ARREADY = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((m_axi_img_in_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state11;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state11 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state11) and (ap_sig_ioackin_m_axi_img_in_AWREADY = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state12 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state12) and (ap_sig_ioackin_m_axi_img_in_WREADY = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_state12;
                end if;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                if (((m_axi_img_in_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state17))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state17;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, tmp_i_fu_109_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_109_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_i_fu_109_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_109_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_ioackin_m_axi_img_in_ARREADY_assign_proc : process(m_axi_img_in_ARREADY, ap_reg_ioackin_m_axi_img_in_ARREADY)
    begin
        if ((ap_reg_ioackin_m_axi_img_in_ARREADY = ap_const_logic_0)) then 
            ap_sig_ioackin_m_axi_img_in_ARREADY <= m_axi_img_in_ARREADY;
        else 
            ap_sig_ioackin_m_axi_img_in_ARREADY <= ap_const_logic_1;
        end if; 
    end process;


    ap_sig_ioackin_m_axi_img_in_AWREADY_assign_proc : process(m_axi_img_in_AWREADY, ap_reg_ioackin_m_axi_img_in_AWREADY)
    begin
        if ((ap_reg_ioackin_m_axi_img_in_AWREADY = ap_const_logic_0)) then 
            ap_sig_ioackin_m_axi_img_in_AWREADY <= m_axi_img_in_AWREADY;
        else 
            ap_sig_ioackin_m_axi_img_in_AWREADY <= ap_const_logic_1;
        end if; 
    end process;


    ap_sig_ioackin_m_axi_img_in_WREADY_assign_proc : process(m_axi_img_in_WREADY, ap_reg_ioackin_m_axi_img_in_WREADY)
    begin
        if ((ap_reg_ioackin_m_axi_img_in_WREADY = ap_const_logic_0)) then 
            ap_sig_ioackin_m_axi_img_in_WREADY <= m_axi_img_in_WREADY;
        else 
            ap_sig_ioackin_m_axi_img_in_WREADY <= ap_const_logic_1;
        end if; 
    end process;

    i_fu_115_p2 <= std_logic_vector(unsigned(i_0_i_i_reg_90) + unsigned(ap_const_lv16_1));

    img_in_blk_n_AR_assign_proc : process(m_axi_img_in_ARREADY, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            img_in_blk_n_AR <= m_axi_img_in_ARREADY;
        else 
            img_in_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    img_in_blk_n_AW_assign_proc : process(m_axi_img_in_AWREADY, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            img_in_blk_n_AW <= m_axi_img_in_AWREADY;
        else 
            img_in_blk_n_AW <= ap_const_logic_1;
        end if; 
    end process;


    img_in_blk_n_B_assign_proc : process(m_axi_img_in_BVALID, ap_CS_fsm_state17)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
            img_in_blk_n_B <= m_axi_img_in_BVALID;
        else 
            img_in_blk_n_B <= ap_const_logic_1;
        end if; 
    end process;


    img_in_blk_n_R_assign_proc : process(m_axi_img_in_RVALID, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            img_in_blk_n_R <= m_axi_img_in_RVALID;
        else 
            img_in_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;


    img_in_blk_n_W_assign_proc : process(m_axi_img_in_WREADY, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            img_in_blk_n_W <= m_axi_img_in_WREADY;
        else 
            img_in_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    m_axi_img_in_ARADDR <= img_in_addr_reg_178;
    m_axi_img_in_ARBURST <= ap_const_lv2_0;
    m_axi_img_in_ARCACHE <= ap_const_lv4_0;
    m_axi_img_in_ARID <= ap_const_lv1_0;
    m_axi_img_in_ARLEN <= ap_const_lv32_1;
    m_axi_img_in_ARLOCK <= ap_const_lv2_0;
    m_axi_img_in_ARPROT <= ap_const_lv3_0;
    m_axi_img_in_ARQOS <= ap_const_lv4_0;
    m_axi_img_in_ARREGION <= ap_const_lv4_0;
    m_axi_img_in_ARSIZE <= ap_const_lv3_0;
    m_axi_img_in_ARUSER <= ap_const_lv1_0;

    m_axi_img_in_ARVALID_assign_proc : process(ap_CS_fsm_state3, ap_reg_ioackin_m_axi_img_in_ARREADY)
    begin
        if (((ap_reg_ioackin_m_axi_img_in_ARREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_img_in_ARVALID <= ap_const_logic_1;
        else 
            m_axi_img_in_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_img_in_AWADDR <= img_in_addr_1_reg_184;
    m_axi_img_in_AWBURST <= ap_const_lv2_0;
    m_axi_img_in_AWCACHE <= ap_const_lv4_0;
    m_axi_img_in_AWID <= ap_const_lv1_0;
    m_axi_img_in_AWLEN <= ap_const_lv32_1;
    m_axi_img_in_AWLOCK <= ap_const_lv2_0;
    m_axi_img_in_AWPROT <= ap_const_lv3_0;
    m_axi_img_in_AWQOS <= ap_const_lv4_0;
    m_axi_img_in_AWREGION <= ap_const_lv4_0;
    m_axi_img_in_AWSIZE <= ap_const_lv3_0;
    m_axi_img_in_AWUSER <= ap_const_lv1_0;

    m_axi_img_in_AWVALID_assign_proc : process(ap_CS_fsm_state11, ap_reg_ioackin_m_axi_img_in_AWREADY)
    begin
        if (((ap_reg_ioackin_m_axi_img_in_AWREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            m_axi_img_in_AWVALID <= ap_const_logic_1;
        else 
            m_axi_img_in_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_img_in_BREADY_assign_proc : process(m_axi_img_in_BVALID, ap_CS_fsm_state17)
    begin
        if (((m_axi_img_in_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state17))) then 
            m_axi_img_in_BREADY <= ap_const_logic_1;
        else 
            m_axi_img_in_BREADY <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_img_in_RREADY_assign_proc : process(m_axi_img_in_RVALID, ap_CS_fsm_state10)
    begin
        if (((m_axi_img_in_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            m_axi_img_in_RREADY <= ap_const_logic_1;
        else 
            m_axi_img_in_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_img_in_WDATA <= tmp_2_i_reg_195;
    m_axi_img_in_WID <= ap_const_lv1_0;
    m_axi_img_in_WLAST <= ap_const_logic_0;
    m_axi_img_in_WSTRB <= ap_const_lv1_1;
    m_axi_img_in_WUSER <= ap_const_lv1_0;

    m_axi_img_in_WVALID_assign_proc : process(ap_CS_fsm_state12, ap_reg_ioackin_m_axi_img_in_WREADY)
    begin
        if (((ap_reg_ioackin_m_axi_img_in_WREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state12))) then 
            m_axi_img_in_WVALID <= ap_const_logic_1;
        else 
            m_axi_img_in_WVALID <= ap_const_logic_0;
        end if; 
    end process;

        sext6_cast_fu_105_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(img_out_offset),33));

        sext_cast_fu_101_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(img_in_offset),33));

        sum3_cast_fu_130_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sum3_fu_125_p2),64));

    sum3_fu_125_p2 <= std_logic_vector(signed(sext_cast_reg_160) + signed(tmp_1_i_cast_fu_121_p1));
        sum9_cast_fu_145_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sum9_fu_140_p2),64));

    sum9_fu_140_p2 <= std_logic_vector(signed(sext6_cast_reg_165) + signed(tmp_1_i_cast_fu_121_p1));
    tmp_1_i_cast_fu_121_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_i_reg_90),33));
    tmp_2_i_fu_155_p2 <= (img_in_addr_read_reg_190 xor ap_const_lv8_FF);
    tmp_i_fu_109_p2 <= "1" when (i_0_i_i_reg_90 = ap_const_lv16_A53C) else "0";
end behav;