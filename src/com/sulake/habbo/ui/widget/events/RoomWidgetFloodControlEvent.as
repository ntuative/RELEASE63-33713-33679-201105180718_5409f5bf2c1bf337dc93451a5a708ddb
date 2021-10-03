package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_724:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1956:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_724,false,false);
         this.var_1956 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1956;
      }
   }
}
