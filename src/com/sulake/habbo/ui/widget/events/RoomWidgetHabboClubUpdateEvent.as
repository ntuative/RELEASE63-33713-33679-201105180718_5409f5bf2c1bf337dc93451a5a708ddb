package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_231:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2183:int = 0;
      
      private var var_2180:int = 0;
      
      private var var_2182:int = 0;
      
      private var var_2184:Boolean = false;
      
      private var var_2181:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_231,param6,param7);
         this.var_2183 = param1;
         this.var_2180 = param2;
         this.var_2182 = param3;
         this.var_2184 = param4;
         this.var_2181 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2183;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2180;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2182;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2184;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2181;
      }
   }
}
