package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1986:int;
      
      private var var_2743:int;
      
      private var var_1450:int;
      
      private var var_2349:int;
      
      private var var_122:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1986 = param1.readInteger();
         this.var_2743 = param1.readInteger();
         this.var_1450 = param1.readInteger();
         this.var_2349 = param1.readInteger();
         this.var_122 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1986);
      }
      
      public function get callId() : int
      {
         return this.var_1986;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2743;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1450;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2349;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_122;
      }
   }
}
