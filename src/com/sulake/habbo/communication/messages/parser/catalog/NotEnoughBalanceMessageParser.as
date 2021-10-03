package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1746:int = 0;
      
      private var var_1745:int = 0;
      
      private var var_1758:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1746;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1745;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1758;
      }
      
      public function flush() : Boolean
      {
         this.var_1746 = 0;
         this.var_1745 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1746 = param1.readInteger();
         this.var_1745 = param1.readInteger();
         this.var_1758 = param1.readInteger();
         return true;
      }
   }
}
