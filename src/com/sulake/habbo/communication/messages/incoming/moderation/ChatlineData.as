package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2311:int;
      
      private var var_2309:int;
      
      private var var_2308:int;
      
      private var var_2310:String;
      
      private var var_1932:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2311 = param1.readInteger();
         this.var_2309 = param1.readInteger();
         this.var_2308 = param1.readInteger();
         this.var_2310 = param1.readString();
         this.var_1932 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2311;
      }
      
      public function get minute() : int
      {
         return this.var_2309;
      }
      
      public function get chatterId() : int
      {
         return this.var_2308;
      }
      
      public function get chatterName() : String
      {
         return this.var_2310;
      }
      
      public function get msg() : String
      {
         return this.var_1932;
      }
   }
}
