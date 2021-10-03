package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2238:int;
      
      private var var_2237:int;
      
      private var var_2325:String;
      
      private var var_2327:int;
      
      private var var_2326:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2238 = param1;
         this.var_2237 = param2;
         this.var_2325 = param3;
         this.var_2327 = param4;
         this.var_2326 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2238,this.var_2237,this.var_2325,this.var_2327,int(this.var_2326)];
      }
      
      public function dispose() : void
      {
      }
   }
}
