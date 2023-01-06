pragma Style_Checks (Off);

--  This spec has been automatically generated from neorv32.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package NeoRV32_SVD.IDENTIFIER_MEM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IDENTIFIER_MEM_identifier_mem_Field is HAL.UInt8;

   --  8 x 39-bit memory
   type IDENTIFIER_MEM_Register is record
      identifier_mem : IDENTIFIER_MEM_identifier_mem_Field := 16#0#;
      --  unspecified
      Reserved_8_31  : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDENTIFIER_MEM_Register use record
      identifier_mem at 0 range 0 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type IDENTIFIER_MEM_Peripheral is record
      --  8 x 39-bit memory
      IDENTIFIER_MEM : aliased IDENTIFIER_MEM_Register;
   end record
     with Volatile;

   for IDENTIFIER_MEM_Peripheral use record
      IDENTIFIER_MEM at 0 range 0 .. 31;
   end record;

   IDENTIFIER_MEM_Periph : aliased IDENTIFIER_MEM_Peripheral
     with Import, Address => IDENTIFIER_MEM_Base;

end NeoRV32_SVD.IDENTIFIER_MEM;
