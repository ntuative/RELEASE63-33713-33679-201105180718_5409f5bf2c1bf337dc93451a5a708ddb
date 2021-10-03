package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class AddSpamWallPostItMessageComposer implements IMessageComposer
   {
       
      
      private var var_1976:int;
      
      private var var_427:String;
      
      private var _message:String;
      
      public function AddSpamWallPostItMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         this.var_1976 = param1;
         this.var_427 = param2;
         this._message = param3;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1976,this.var_427,this._message];
      }
   }
}
