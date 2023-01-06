with Ada.Unchecked_Conversion;

package body NeoRV32 is

   procedure Set_Leds(Value : Mod_Byte) is
      function Mod_To_LED is new Ada.Unchecked_Conversion(Source => Mod_Byte,
                                                          Target => LEDS_Peripheral);
   begin
      LEDS_Periph := Mod_To_LED(Value);
   end Set_Leds;

   procedure Putchar (Char : Character)
   is
   begin
      null;
   end Putchar;

end NeoRV32;
