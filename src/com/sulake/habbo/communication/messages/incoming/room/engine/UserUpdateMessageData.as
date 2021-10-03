package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_2784:Number = 0;
      
      private var var_2783:Number = 0;
      
      private var var_2782:Number = 0;
      
      private var var_2785:Number = 0;
      
      private var var_426:int = 0;
      
      private var var_2364:int = 0;
      
      private var var_336:Array;
      
      private var var_2786:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_336 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_172 = param3;
         this.var_171 = param4;
         this.var_2784 = param5;
         this.var_426 = param6;
         this.var_2364 = param7;
         this.var_2783 = param8;
         this.var_2782 = param9;
         this.var_2785 = param10;
         this.var_2786 = param11;
         this.var_336 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function get z() : Number
      {
         return this.var_171;
      }
      
      public function get localZ() : Number
      {
         return this.var_2784;
      }
      
      public function get targetX() : Number
      {
         return this.var_2783;
      }
      
      public function get targetY() : Number
      {
         return this.var_2782;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2785;
      }
      
      public function get dir() : int
      {
         return this.var_426;
      }
      
      public function get dirHead() : int
      {
         return this.var_2364;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2786;
      }
      
      public function get actions() : Array
      {
         return this.var_336.slice();
      }
   }
}
