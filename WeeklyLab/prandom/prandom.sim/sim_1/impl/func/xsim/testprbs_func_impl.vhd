-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Wed Oct 17 17:00:37 2018
-- Host        : mlenehan-HP-ENVY-Notebook running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/mlenehan/prandom/prandom.sim/sim_1/impl/func/xsim/testprbs_func_impl.vhd
-- Design      : lfsr
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010iclg225-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff is
  port (
    data_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
end dff;

architecture STRUCTURE of dff is
begin
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out(0),
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_0 is
  port (
    data_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_0 : entity is "dff";
end dff_0;

architecture STRUCTURE of dff_0 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_1 is
  port (
    data_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_1 : entity is "dff";
end dff_1;

architecture STRUCTURE of dff_1 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_10 is
  port (
    data_out_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_10 : entity is "dff";
end dff_10;

architecture STRUCTURE of dff_10 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out_OBUF(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_11 is
  port (
    data_out_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_11 : entity is "dff";
end dff_11;

architecture STRUCTURE of dff_11 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out_OBUF(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_12 is
  port (
    data_out_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_12 : entity is "dff";
end dff_12;

architecture STRUCTURE of dff_12 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out_OBUF(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_13 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    data_out_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_13 : entity is "dff";
end dff_13;

architecture STRUCTURE of dff_13 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => data_out_OBUF(0),
      Q => Q_reg_0(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => data_out_OBUF(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_14 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    D : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_14 : entity is "dff";
end dff_14;

architecture STRUCTURE of dff_14 is
begin
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D,
      Q => Q_reg_0(0),
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_2 is
  port (
    data_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_2 : entity is "dff";
end dff_2;

architecture STRUCTURE of dff_2 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_3 is
  port (
    data_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_3 : entity is "dff";
end dff_3;

architecture STRUCTURE of dff_3 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_4 is
  port (
    data_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_4 : entity is "dff";
end dff_4;

architecture STRUCTURE of dff_4 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_5 is
  port (
    data_out_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC;
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_5 : entity is "dff";
end dff_5;

architecture STRUCTURE of dff_5 is
  signal \^data_out_obuf\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  data_out_OBUF(0) <= \^data_out_obuf\(0);
Q_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^data_out_obuf\(0),
      I1 => Q_reg_0(2),
      I2 => Q_reg_0(0),
      I3 => Q_reg_0(1),
      O => D
    );
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => \^data_out_obuf\(0),
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_6 is
  port (
    data_out_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_6 : entity is "dff";
end dff_6;

architecture STRUCTURE of dff_6 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out_OBUF(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_7 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    data_out_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_7 : entity is "dff";
end dff_7;

architecture STRUCTURE of dff_7 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => data_out_OBUF(0),
      Q => Q_reg_0(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => data_out_OBUF(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_8 is
  port (
    data_out_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_8 : entity is "dff";
end dff_8;

architecture STRUCTURE of dff_8 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out_OBUF(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_9 is
  port (
    data_out_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    lopt : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_9 : entity is "dff";
end dff_9;

architecture STRUCTURE of dff_9 is
  signal Q_reg_lopt_replica_1 : STD_LOGIC;
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of Q_reg_lopt_replica : label is std.standard.true;
begin
  lopt <= Q_reg_lopt_replica_1;
Q_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => data_out_OBUF(0),
      S => RSTn_IBUF
    );
Q_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0(0),
      Q => Q_reg_lopt_replica_1,
      S => RSTn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lfsr is
  port (
    CLK : in STD_LOGIC;
    RSTn : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of lfsr : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of lfsr : entity is "c15121df";
end lfsr;

architecture STRUCTURE of lfsr is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal D : STD_LOGIC;
  signal RSTn_IBUF : STD_LOGIC;
  signal data_out_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_10 : STD_LOGIC;
  signal lopt_11 : STD_LOGIC;
  signal lopt_12 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal lopt_6 : STD_LOGIC;
  signal lopt_7 : STD_LOGIC;
  signal lopt_8 : STD_LOGIC;
  signal lopt_9 : STD_LOGIC;
begin
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
RSTn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RSTn,
      O => RSTn_IBUF
    );
\data_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(0),
      O => data_out(0)
    );
\data_out_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt,
      O => data_out(10)
    );
\data_out_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_1,
      O => data_out(11)
    );
\data_out_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_2,
      O => data_out(12)
    );
\data_out_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_3,
      O => data_out(13)
    );
\data_out_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_4,
      O => data_out(14)
    );
\data_out_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_5,
      O => data_out(15)
    );
\data_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(1),
      O => data_out(1)
    );
\data_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(2),
      O => data_out(2)
    );
\data_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_6,
      O => data_out(3)
    );
\data_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_7,
      O => data_out(4)
    );
\data_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_8,
      O => data_out(5)
    );
\data_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_9,
      O => data_out(6)
    );
\data_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_10,
      O => data_out(7)
    );
\data_out_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_11,
      O => data_out(8)
    );
\data_out_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_12,
      O => data_out(9)
    );
\g0[0].stageN\: entity work.dff
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(0),
      RSTn_IBUF => RSTn_IBUF,
      data_out(0) => data_out_OBUF(1)
    );
\g0[10].stageN\: entity work.dff_0
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(10),
      RSTn_IBUF => RSTn_IBUF,
      data_out(0) => data_out_OBUF(11),
      lopt => lopt_1
    );
\g0[11].stageN\: entity work.dff_1
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(11),
      RSTn_IBUF => RSTn_IBUF,
      data_out(0) => data_out_OBUF(12),
      lopt => lopt_2
    );
\g0[12].stageN\: entity work.dff_2
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(12),
      RSTn_IBUF => RSTn_IBUF,
      data_out(0) => data_out_OBUF(13),
      lopt => lopt_3
    );
\g0[13].stageN\: entity work.dff_3
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(13),
      RSTn_IBUF => RSTn_IBUF,
      data_out(0) => data_out_OBUF(14),
      lopt => lopt_4
    );
\g0[14].stageN\: entity work.dff_4
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(14),
      RSTn_IBUF => RSTn_IBUF,
      data_out(0) => data_out_OBUF(15),
      lopt => lopt_5
    );
\g0[1].stageN\: entity work.dff_5
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D => D,
      Q_reg_0(2) => data_out_OBUF(15),
      Q_reg_0(1) => data_out_OBUF(4),
      Q_reg_0(0) => data_out_OBUF(1),
      RSTn_IBUF => RSTn_IBUF,
      data_out_OBUF(0) => data_out_OBUF(2)
    );
\g0[2].stageN\: entity work.dff_6
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(2),
      RSTn_IBUF => RSTn_IBUF,
      data_out_OBUF(0) => data_out_OBUF(3),
      lopt => lopt_6
    );
\g0[3].stageN\: entity work.dff_7
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(4),
      RSTn_IBUF => RSTn_IBUF,
      data_out_OBUF(0) => data_out_OBUF(3),
      lopt => lopt_7
    );
\g0[4].stageN\: entity work.dff_8
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(4),
      RSTn_IBUF => RSTn_IBUF,
      data_out_OBUF(0) => data_out_OBUF(5),
      lopt => lopt_8
    );
\g0[5].stageN\: entity work.dff_9
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(5),
      RSTn_IBUF => RSTn_IBUF,
      data_out_OBUF(0) => data_out_OBUF(6),
      lopt => lopt_9
    );
\g0[6].stageN\: entity work.dff_10
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(6),
      RSTn_IBUF => RSTn_IBUF,
      data_out_OBUF(0) => data_out_OBUF(7),
      lopt => lopt_10
    );
\g0[7].stageN\: entity work.dff_11
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(7),
      RSTn_IBUF => RSTn_IBUF,
      data_out_OBUF(0) => data_out_OBUF(8),
      lopt => lopt_11
    );
\g0[8].stageN\: entity work.dff_12
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(8),
      RSTn_IBUF => RSTn_IBUF,
      data_out_OBUF(0) => data_out_OBUF(9),
      lopt => lopt_12
    );
\g0[9].stageN\: entity work.dff_13
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q_reg_0(0) => data_out_OBUF(10),
      RSTn_IBUF => RSTn_IBUF,
      data_out_OBUF(0) => data_out_OBUF(9),
      lopt => lopt
    );
stage0: entity work.dff_14
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D => D,
      Q_reg_0(0) => data_out_OBUF(0),
      RSTn_IBUF => RSTn_IBUF
    );
end STRUCTURE;
