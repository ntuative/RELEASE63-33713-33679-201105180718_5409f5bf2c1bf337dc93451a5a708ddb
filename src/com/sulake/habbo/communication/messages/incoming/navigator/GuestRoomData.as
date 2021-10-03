package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_356:int;
      
      private var var_796:Boolean;
      
      private var var_945:String;
      
      private var _ownerName:String;
      
      private var var_2772:int;
      
      private var var_2277:int;
      
      private var var_2798:int;
      
      private var var_1666:String;
      
      private var var_2799:int;
      
      private var var_2796:Boolean;
      
      private var var_855:int;
      
      private var var_1489:int;
      
      private var var_2797:String;
      
      private var var_871:Array;
      
      private var var_2795:RoomThumbnailData;
      
      private var var_2776:Boolean;
      
      private var var_2800:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_871 = new Array();
         super();
         this.var_356 = param1.readInteger();
         this.var_796 = param1.readBoolean();
         this.var_945 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2772 = param1.readInteger();
         this.var_2277 = param1.readInteger();
         this.var_2798 = param1.readInteger();
         this.var_1666 = param1.readString();
         this.var_2799 = param1.readInteger();
         this.var_2796 = param1.readBoolean();
         this.var_855 = param1.readInteger();
         this.var_1489 = param1.readInteger();
         this.var_2797 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_871.push(_loc4_);
            _loc3_++;
         }
         this.var_2795 = new RoomThumbnailData(param1);
         this.var_2776 = param1.readBoolean();
         this.var_2800 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_871 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_356;
      }
      
      public function get event() : Boolean
      {
         return this.var_796;
      }
      
      public function get roomName() : String
      {
         return this.var_945;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2772;
      }
      
      public function get userCount() : int
      {
         return this.var_2277;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2798;
      }
      
      public function get description() : String
      {
         return this.var_1666;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2799;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2796;
      }
      
      public function get score() : int
      {
         return this.var_855;
      }
      
      public function get categoryId() : int
      {
         return this.var_1489;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2797;
      }
      
      public function get tags() : Array
      {
         return this.var_871;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2795;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2776;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2800;
      }
   }
}
