pragma Style_Checks (Off);

--  This spec has been automatically generated from neorv32.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package NeoRV32_SVD.LEDS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype OUT_out_Field is HAL.UInt8;

   --  Led Output(s) Control.
   type OUT_Register is record
      out_k         : OUT_out_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_Register use record
      out_k         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type LEDS_Peripheral is record
      --  Led Output(s) Control.
      OUT_k : aliased OUT_Register;
   end record
     with Volatile;

   for LEDS_Peripheral use record
      OUT_k at 0 range 0 .. 31;
   end record;

   LEDS_Periph : aliased LEDS_Peripheral
     with Import, Address => LEDS_Base;

end NeoRV32_SVD.LEDS;
