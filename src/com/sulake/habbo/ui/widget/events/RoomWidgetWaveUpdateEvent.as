package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetWaveUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_686:String = "RWUE_WAVE";
       
      
      public function RoomWidgetWaveUpdateEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_686,param1,param2);
      }
   }
}
