package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1799:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1470:String;
      
      private var var_1765:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1470 = param2;
         this.var_1765 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1470;
      }
      
      public function get classId() : int
      {
         return this.var_1765;
      }
   }
}
