package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1108:String = "M";
      
      public static const const_1789:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_426:int = 0;
      
      private var _name:String = "";
      
      private var var_1620:int = 0;
      
      private var var_1020:String = "";
      
      private var var_587:String = "";
      
      private var var_2360:String = "";
      
      private var var_2358:int;
      
      private var var_2359:int = 0;
      
      private var var_2355:String = "";
      
      private var var_2356:int = 0;
      
      private var var_2357:int = 0;
      
      private var var_2626:String = "";
      
      private var var_187:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_187 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_187)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_187)
         {
            this.var_172 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_171;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_187)
         {
            this.var_171 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_426;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_187)
         {
            this.var_426 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_187)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1620;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_187)
         {
            this.var_1620 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1020;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_187)
         {
            this.var_1020 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_587;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_187)
         {
            this.var_587 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2360;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_187)
         {
            this.var_2360 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2358;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_187)
         {
            this.var_2358 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2359;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_187)
         {
            this.var_2359 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2355;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_187)
         {
            this.var_2355 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2356;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_187)
         {
            this.var_2356 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2357;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_187)
         {
            this.var_2357 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2626;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_187)
         {
            this.var_2626 = param1;
         }
      }
   }
}
