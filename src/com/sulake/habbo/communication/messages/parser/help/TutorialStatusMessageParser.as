package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1127:Boolean;
      
      private var var_1126:Boolean;
      
      private var var_1407:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1127;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1126;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1407;
      }
      
      public function flush() : Boolean
      {
         this.var_1127 = false;
         this.var_1126 = false;
         this.var_1407 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1127 = param1.readBoolean();
         this.var_1126 = param1.readBoolean();
         this.var_1407 = param1.readBoolean();
         return true;
      }
   }
}
