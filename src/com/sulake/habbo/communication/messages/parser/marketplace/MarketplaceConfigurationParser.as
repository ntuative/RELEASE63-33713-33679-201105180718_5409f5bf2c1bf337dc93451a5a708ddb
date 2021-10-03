package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1399:Boolean;
      
      private var var_2431:int;
      
      private var var_1965:int;
      
      private var var_1966:int;
      
      private var var_2428:int;
      
      private var var_2429:int;
      
      private var var_2427:int;
      
      private var var_2430:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1399;
      }
      
      public function get commission() : int
      {
         return this.var_2431;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1965;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1966;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2429;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2428;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2427;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2430;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1399 = param1.readBoolean();
         this.var_2431 = param1.readInteger();
         this.var_1965 = param1.readInteger();
         this.var_1966 = param1.readInteger();
         this.var_2429 = param1.readInteger();
         this.var_2428 = param1.readInteger();
         this.var_2427 = param1.readInteger();
         this.var_2430 = param1.readInteger();
         return true;
      }
   }
}
