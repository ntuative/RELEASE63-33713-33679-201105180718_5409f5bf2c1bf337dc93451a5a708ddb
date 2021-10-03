package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PublicSpaceCastLibsMessageParser implements IMessageParser
   {
       
      
      private var var_1688:int;
      
      private var var_2244:String;
      
      private var var_2243:int;
      
      public function PublicSpaceCastLibsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1688 = param1.readInteger();
         this.var_2244 = param1.readString();
         this.var_2243 = param1.readInteger();
         return true;
      }
      
      public function get nodeId() : int
      {
         return this.var_1688;
      }
      
      public function get castLibs() : String
      {
         return this.var_2244;
      }
      
      public function get unitPort() : int
      {
         return this.var_2243;
      }
   }
}
