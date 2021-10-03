package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2847:int;
      
      private var var_2882:int;
      
      private var var_1155:int;
      
      private var var_1157:int;
      
      private var var_1758:int;
      
      private var var_2883:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2847 = param1.readInteger();
         this.var_2882 = param1.readInteger();
         this.var_1155 = param1.readInteger();
         this.var_1157 = param1.readInteger();
         this.var_1758 = param1.readInteger();
         this.var_2883 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2847;
      }
      
      public function get charges() : int
      {
         return this.var_2882;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1155;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1157;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2883;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1758;
      }
   }
}
