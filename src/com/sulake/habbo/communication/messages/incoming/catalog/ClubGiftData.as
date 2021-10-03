package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1694:int;
      
      private var var_2731:Boolean;
      
      private var var_2240:Boolean;
      
      private var var_2732:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1694 = param1.readInteger();
         this.var_2731 = param1.readBoolean();
         this.var_2732 = param1.readInteger();
         this.var_2240 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1694;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2731;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2240;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2732;
      }
   }
}
