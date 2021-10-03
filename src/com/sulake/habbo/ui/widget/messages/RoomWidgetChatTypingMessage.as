package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_891:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_585:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_891);
         this.var_585 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_585;
      }
   }
}
