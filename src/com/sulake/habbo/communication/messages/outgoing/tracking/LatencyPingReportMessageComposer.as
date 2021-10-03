package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2788:int;
      
      private var var_2789:int;
      
      private var var_2790:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2788 = param1;
         this.var_2789 = param2;
         this.var_2790 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2788,this.var_2789,this.var_2790];
      }
      
      public function dispose() : void
      {
      }
   }
}
