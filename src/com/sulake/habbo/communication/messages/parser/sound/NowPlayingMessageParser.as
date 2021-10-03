package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_2082:int;
      
      private var _currentPosition:int;
      
      private var var_2080:int;
      
      private var var_2081:int;
      
      private var var_2083:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_2082;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_2080;
      }
      
      public function get nextPosition() : int
      {
         return this.var_2081;
      }
      
      public function get syncCount() : int
      {
         return this.var_2083;
      }
      
      public function flush() : Boolean
      {
         this.var_2082 = -1;
         this._currentPosition = -1;
         this.var_2080 = -1;
         this.var_2081 = -1;
         this.var_2083 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2082 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_2080 = param1.readInteger();
         this.var_2081 = param1.readInteger();
         this.var_2083 = param1.readInteger();
         return true;
      }
   }
}
