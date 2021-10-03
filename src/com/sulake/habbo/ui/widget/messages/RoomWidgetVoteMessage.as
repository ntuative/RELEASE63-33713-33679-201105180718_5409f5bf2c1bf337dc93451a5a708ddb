package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_121:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_2000:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_121);
         this.var_2000 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_2000;
      }
   }
}
