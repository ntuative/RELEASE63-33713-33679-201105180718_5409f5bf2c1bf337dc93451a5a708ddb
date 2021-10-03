package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_775:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_2010:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_775);
         this.var_2010 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_2010;
      }
   }
}
