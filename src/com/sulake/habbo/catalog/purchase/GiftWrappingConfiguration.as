package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1399:Boolean = false;
      
      private var var_1693:int;
      
      private var var_1626:Array;
      
      private var var_708:Array;
      
      private var var_707:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1399 = _loc2_.isWrappingEnabled;
         this.var_1693 = _loc2_.wrappingPrice;
         this.var_1626 = _loc2_.stuffTypes;
         this.var_708 = _loc2_.boxTypes;
         this.var_707 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1399;
      }
      
      public function get price() : int
      {
         return this.var_1693;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1626;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_708;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_707;
      }
   }
}
