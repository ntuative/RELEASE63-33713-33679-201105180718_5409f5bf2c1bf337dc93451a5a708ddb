package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2284:int = 0;
      
      private var var_1591:String = "";
      
      private var var_2061:String = "";
      
      private var var_2281:String = "";
      
      private var var_2282:String = "";
      
      private var var_1687:int = 0;
      
      private var var_2280:int = 0;
      
      private var var_2285:int = 0;
      
      private var var_1592:int = 0;
      
      private var var_2283:int = 0;
      
      private var var_1594:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2284 = param1;
         this.var_1591 = param2;
         this.var_2061 = param3;
         this.var_2281 = param4;
         this.var_2282 = param5;
         if(param6)
         {
            this.var_1687 = 1;
         }
         else
         {
            this.var_1687 = 0;
         }
         this.var_2280 = param7;
         this.var_2285 = param8;
         this.var_1592 = param9;
         this.var_2283 = param10;
         this.var_1594 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2284,this.var_1591,this.var_2061,this.var_2281,this.var_2282,this.var_1687,this.var_2280,this.var_2285,this.var_1592,this.var_2283,this.var_1594];
      }
   }
}
