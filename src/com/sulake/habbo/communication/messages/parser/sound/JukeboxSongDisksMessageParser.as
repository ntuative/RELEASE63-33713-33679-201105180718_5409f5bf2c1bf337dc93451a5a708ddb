package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.utils.Map;
   
   public class JukeboxSongDisksMessageParser implements IMessageParser
   {
       
      
      private var var_1391:Map;
      
      private var var_1684:int;
      
      public function JukeboxSongDisksMessageParser()
      {
         super();
         this.var_1391 = new Map();
      }
      
      public function get songDisks() : Map
      {
         return this.var_1391;
      }
      
      public function get maxLength() : int
      {
         return this.var_1684;
      }
      
      public function flush() : Boolean
      {
         this.var_1391.reset();
         this.var_1684 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1684 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = -1;
         var _loc4_:int = -1;
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc3_ = param1.readInteger();
            _loc4_ = param1.readInteger();
            this.var_1391.add(_loc3_,_loc4_);
            _loc5_++;
         }
         return true;
      }
   }
}
