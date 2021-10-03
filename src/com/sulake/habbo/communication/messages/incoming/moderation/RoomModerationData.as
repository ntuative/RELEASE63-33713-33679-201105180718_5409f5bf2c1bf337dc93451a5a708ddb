package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_356:int;
      
      private var var_2277:int;
      
      private var var_2420:Boolean;
      
      private var var_2222:int;
      
      private var _ownerName:String;
      
      private var var_122:RoomData;
      
      private var var_796:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_356 = param1.readInteger();
         this.var_2277 = param1.readInteger();
         this.var_2420 = param1.readBoolean();
         this.var_2222 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_122 = new RoomData(param1);
         this.var_796 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_122 != null)
         {
            this.var_122.dispose();
            this.var_122 = null;
         }
         if(this.var_796 != null)
         {
            this.var_796.dispose();
            this.var_796 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_356;
      }
      
      public function get userCount() : int
      {
         return this.var_2277;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2420;
      }
      
      public function get ownerId() : int
      {
         return this.var_2222;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_122;
      }
      
      public function get event() : RoomData
      {
         return this.var_796;
      }
   }
}
