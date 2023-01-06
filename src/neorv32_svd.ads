pragma Style_Checks (Off);

--  This spec has been automatically generated from neorv32.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  Litex SoC 2023-01-05 16:17:26
package NeoRV32_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   CTRL_Base : constant System.Address := System'To_Address (16#82000000#);
   IDENTIFIER_MEM_Base : constant System.Address := System'To_Address (16#82000800#);
   LEDS_Base : constant System.Address := System'To_Address (16#82001000#);
   SDRAM_Base : constant System.Address := System'To_Address (16#82001800#);
   SPISDCARD_Base : constant System.Address := System'To_Address (16#82002000#);
   TIMER0_Base : constant System.Address := System'To_Address (16#82002800#);
   UART_Base : constant System.Address := System'To_Address (16#82003000#);

end NeoRV32_SVD;
