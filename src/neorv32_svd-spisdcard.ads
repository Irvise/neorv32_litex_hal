pragma Style_Checks (Off);

--  This spec has been automatically generated from neorv32.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package NeoRV32_SVD.SPISDCARD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CONTROL_length_Field is HAL.UInt8;

   --  SPI Control.
   type CONTROL_Register is record
      --  SPI Xfer Start (Write ``1`` to start Xfer).
      start          : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  SPI Xfer Length (in bits).
      length         : CONTROL_length_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONTROL_Register use record
      start          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      length         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SPI Status.
   type STATUS_Register is record
      --  SPI Xfer Done (when read as ``1``).
      done          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      done          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype MOSI_mosi_Field is HAL.UInt8;

   --  SPI MOSI data (MSB-first serialization).
   type MOSI_Register is record
      mosi          : MOSI_mosi_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOSI_Register use record
      mosi          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MISO_miso_Field is HAL.UInt8;

   --  SPI MISO data (MSB-first de-serialization).
   type MISO_Register is record
      miso          : MISO_miso_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISO_Register use record
      miso          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  SPI CS Chip-Select and Mode.
   type CS_Register is record
      --  None
      sel            : Boolean := True;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  None
      mode           : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CS_Register use record
      sel            at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      mode           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  SPI Loopback Mode.
   type LOOPBACK_Register is record
      --  None
      mode          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOOPBACK_Register use record
      mode          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CLK_DIVIDER_clk_divider_Field is HAL.UInt16;

   --  SPI Clk Divider.
   type CLK_DIVIDER_Register is record
      clk_divider    : CLK_DIVIDER_clk_divider_Field := 16#7D#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_DIVIDER_Register use record
      clk_divider    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SPISDCARD_Peripheral is record
      --  SPI Control.
      CONTROL     : aliased CONTROL_Register;
      --  SPI Status.
      STATUS      : aliased STATUS_Register;
      --  SPI MOSI data (MSB-first serialization).
      MOSI        : aliased MOSI_Register;
      --  SPI MISO data (MSB-first de-serialization).
      MISO        : aliased MISO_Register;
      --  SPI CS Chip-Select and Mode.
      CS          : aliased CS_Register;
      --  SPI Loopback Mode.
      LOOPBACK    : aliased LOOPBACK_Register;
      --  SPI Clk Divider.
      CLK_DIVIDER : aliased CLK_DIVIDER_Register;
   end record
     with Volatile;

   for SPISDCARD_Peripheral use record
      CONTROL     at 16#0# range 0 .. 31;
      STATUS      at 16#4# range 0 .. 31;
      MOSI        at 16#8# range 0 .. 31;
      MISO        at 16#C# range 0 .. 31;
      CS          at 16#10# range 0 .. 31;
      LOOPBACK    at 16#14# range 0 .. 31;
      CLK_DIVIDER at 16#18# range 0 .. 31;
   end record;

   SPISDCARD_Periph : aliased SPISDCARD_Peripheral
     with Import, Address => SPISDCARD_Base;

end NeoRV32_SVD.SPISDCARD;
