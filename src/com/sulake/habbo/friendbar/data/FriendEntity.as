package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_894:int;
      
      private var var_792:Boolean;
      
      private var var_2011:Boolean;
      
      private var var_587:String;
      
      private var var_1489:int;
      
      private var var_2010:String;
      
      private var var_1881:String;
      
      private var var_1879:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1879 = param3;
         this.var_2010 = param4;
         this.var_894 = param5;
         this.var_792 = param6;
         this.var_2011 = param7;
         this.var_587 = param8;
         this.var_1489 = param9;
         this.var_1881 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_894;
      }
      
      public function get online() : Boolean
      {
         return this.var_792;
      }
      
      public function get allowFollow() : Boolean
      {
         return this.var_2011;
      }
      
      public function get figure() : String
      {
         return this.var_587;
      }
      
      public function get categoryId() : int
      {
         return this.var_1489;
      }
      
      public function get motto() : String
      {
         return this.var_2010;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1881;
      }
      
      public function get realName() : String
      {
         return this.var_1879;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_894 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_792 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_2011 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_587 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1489 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_2010 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1881 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1879 = param1;
      }
   }
}
