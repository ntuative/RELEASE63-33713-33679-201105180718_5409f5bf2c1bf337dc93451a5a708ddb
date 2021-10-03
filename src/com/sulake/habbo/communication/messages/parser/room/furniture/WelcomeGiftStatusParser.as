package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class WelcomeGiftStatusParser implements IMessageParser
   {
       
      
      private var var_1444:String;
      
      private var var_1163:Boolean;
      
      private var var_2204:Boolean;
      
      private var _furniId:int;
      
      private var var_2205:Boolean;
      
      public function WelcomeGiftStatusParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1444 = param1.readString();
         this.var_1163 = param1.readBoolean();
         this.var_2204 = param1.readBoolean();
         this._furniId = param1.readInteger();
         this.var_2205 = param1.readBoolean();
         return true;
      }
      
      public function get requestedByUser() : Boolean
      {
         return this.var_2205;
      }
      
      public function get email() : String
      {
         return this.var_1444;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1163;
      }
      
      public function get allowChange() : Boolean
      {
         return this.var_2204;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
   }
}
