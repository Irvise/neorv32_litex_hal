with NeoRV32_SVD.LEDS; use NeoRV32_SVD.LEDS;

package NeoRV32 with Preelaborate is
   type Mod_Byte is mod 2**OUT_out_Field'Size with Size => 32;
   procedure Set_Leds(Value : Mod_Byte);
   --  Set the leds to be turned on

   procedure Putchar (Char : Character)
   with Export,
        Convention => C,
        Link_Name => "putchar";

end NeoRV32;
