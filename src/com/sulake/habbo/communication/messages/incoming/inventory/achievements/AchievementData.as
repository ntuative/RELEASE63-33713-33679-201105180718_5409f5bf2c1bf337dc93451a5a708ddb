package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1173:int;
      
      private var var_319:String;
      
      private var var_1899:int;
      
      private var var_2585:int;
      
      private var var_1994:int;
      
      private var var_1901:int;
      
      private var var_1900:Boolean;
      
      private var _category:String;
      
      private var var_2627:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1173 = param1.readInteger();
         this.var_319 = param1.readString();
         this.var_1899 = param1.readInteger();
         this.var_2585 = param1.readInteger();
         this.var_1994 = param1.readInteger();
         this.var_1901 = param1.readInteger();
         this.var_1900 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2627 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_319;
      }
      
      public function get level() : int
      {
         return this.var_1173;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1899;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2585;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1994;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1901;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1900;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2627;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1173 > 1 || this.var_1900;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1901 = this.var_1899;
      }
   }
}
