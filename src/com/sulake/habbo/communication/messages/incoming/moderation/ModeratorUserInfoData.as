package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2549:int;
      
      private var var_2548:int;
      
      private var var_792:Boolean;
      
      private var var_2546:int;
      
      private var var_2550:int;
      
      private var var_2551:int;
      
      private var var_2547:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2549 = param1.readInteger();
         this.var_2548 = param1.readInteger();
         this.var_792 = param1.readBoolean();
         this.var_2546 = param1.readInteger();
         this.var_2550 = param1.readInteger();
         this.var_2551 = param1.readInteger();
         this.var_2547 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2549;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2548;
      }
      
      public function get online() : Boolean
      {
         return this.var_792;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2546;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2550;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2551;
      }
      
      public function get banCount() : int
      {
         return this.var_2547;
      }
   }
}
