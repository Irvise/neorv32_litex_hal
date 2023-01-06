pragma Style_Checks (Off);

--  This spec has been automatically generated from neorv32.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package NeoRV32_SVD.TIMER0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable flag of the Timer. Set this flag to ``1`` to enable/start the
   --  Timer. Set to ``0`` to disable the Timer.
   type EN_Register is record
      en            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EN_Register use record
      en            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Update trigger for the current countdown value. A write to this register
   --  latches the current countdown value to ``value`` register.
   type UPDATE_VALUE_Register is record
      update_value  : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPDATE_VALUE_Register use record
      update_value  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  This register contains the current raw level of the zero event trigger.
   --  Writes to this register have no effect.
   type EV_STATUS_Register is record
      --  Level of the ``zero`` event
      zero          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EV_STATUS_Register use record
      zero          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  When a zero event occurs, the corresponding bit will be set in this
   --  register. To clear the Event, set the corresponding bit in this
   --  register.
   type EV_PENDING_Register is record
      --  `1` if a `zero` event occurred. This Event is triggered on a
      --  **falling** edge.
      zero          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EV_PENDING_Register use record
      zero          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  This register enables the corresponding zero events. Write a ``0`` to
   --  this register to disable individual events.
   type EV_ENABLE_Register is record
      --  Write a ``1`` to enable the ``zero`` Event
      zero          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EV_ENABLE_Register use record
      zero          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TIMER0_Peripheral is record
      --  Load value when Timer is (re-)enabled. In One-Shot mode, the value
      --  written to this register specifies the Timer's duration in clock
      --  cycles.
      LOAD         : aliased HAL.UInt32;
      --  Reload value when Timer reaches ``0``. In Periodic mode, the value
      --  written to this register specify the Timer's period in clock cycles.
      RELOAD       : aliased HAL.UInt32;
      --  Enable flag of the Timer. Set this flag to ``1`` to enable/start the
      --  Timer. Set to ``0`` to disable the Timer.
      EN           : aliased EN_Register;
      --  Update trigger for the current countdown value. A write to this
      --  register latches the current countdown value to ``value`` register.
      UPDATE_VALUE : aliased UPDATE_VALUE_Register;
      --  Latched countdown value. This value is updated by writing to
      --  ``update_value``.
      VALUE        : aliased HAL.UInt32;
      --  This register contains the current raw level of the zero event
      --  trigger. Writes to this register have no effect.
      EV_STATUS    : aliased EV_STATUS_Register;
      --  When a zero event occurs, the corresponding bit will be set in this
      --  register. To clear the Event, set the corresponding bit in this
      --  register.
      EV_PENDING   : aliased EV_PENDING_Register;
      --  This register enables the corresponding zero events. Write a ``0`` to
      --  this register to disable individual events.
      EV_ENABLE    : aliased EV_ENABLE_Register;
   end record
     with Volatile;

   for TIMER0_Peripheral use record
      LOAD         at 16#0# range 0 .. 31;
      RELOAD       at 16#4# range 0 .. 31;
      EN           at 16#8# range 0 .. 31;
      UPDATE_VALUE at 16#C# range 0 .. 31;
      VALUE        at 16#10# range 0 .. 31;
      EV_STATUS    at 16#14# range 0 .. 31;
      EV_PENDING   at 16#18# range 0 .. 31;
      EV_ENABLE    at 16#1C# range 0 .. 31;
   end record;

   TIMER0_Periph : aliased TIMER0_Peripheral
     with Import, Address => TIMER0_Base;

end NeoRV32_SVD.TIMER0;
