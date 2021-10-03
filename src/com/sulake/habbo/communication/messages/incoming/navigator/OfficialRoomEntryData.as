package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1178:int = 1;
      
      public static const const_707:int = 2;
      
      public static const const_977:int = 3;
      
      public static const const_1661:int = 4;
       
      
      private var _index:int;
      
      private var var_2861:String;
      
      private var var_2860:String;
      
      private var var_2863:Boolean;
      
      private var var_2864:String;
      
      private var var_963:String;
      
      private var var_2862:int;
      
      private var var_2277:int;
      
      private var _type:int;
      
      private var var_2252:String;
      
      private var var_1057:GuestRoomData;
      
      private var var_1058:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2861 = param1.readString();
         this.var_2860 = param1.readString();
         this.var_2863 = param1.readInteger() == 1;
         this.var_2864 = param1.readString();
         this.var_963 = param1.readString();
         this.var_2862 = param1.readInteger();
         this.var_2277 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1178)
         {
            this.var_2252 = param1.readString();
         }
         else if(this._type == const_977)
         {
            this.var_1058 = new PublicRoomData(param1);
         }
         else if(this._type == const_707)
         {
            this.var_1057 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1057 != null)
         {
            this.var_1057.dispose();
            this.var_1057 = null;
         }
         if(this.var_1058 != null)
         {
            this.var_1058.dispose();
            this.var_1058 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2861;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2860;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2863;
      }
      
      public function get picText() : String
      {
         return this.var_2864;
      }
      
      public function get picRef() : String
      {
         return this.var_963;
      }
      
      public function get folderId() : int
      {
         return this.var_2862;
      }
      
      public function get tag() : String
      {
         return this.var_2252;
      }
      
      public function get userCount() : int
      {
         return this.var_2277;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1057;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1058;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1178)
         {
            return 0;
         }
         if(this.type == const_707)
         {
            return this.var_1057.maxUserCount;
         }
         if(this.type == const_977)
         {
            return this.var_1058.maxUsers;
         }
         return 0;
      }
   }
}
