package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1697:int;
      
      private var var_2555:String;
      
      private var var_894:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1697 = param1.readInteger();
         this.var_2555 = param1.readString();
         this.var_894 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1697;
      }
      
      public function get figureString() : String
      {
         return this.var_2555;
      }
      
      public function get gender() : String
      {
         return this.var_894;
      }
   }
}
