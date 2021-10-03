package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2089:IID;
      
      private var var_1088:Boolean;
      
      private var var_1331:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2089 = param1;
         this.var_1331 = new Array();
         this.var_1088 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2089;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1088;
      }
      
      public function get receivers() : Array
      {
         return this.var_1331;
      }
      
      public function dispose() : void
      {
         if(!this.var_1088)
         {
            this.var_1088 = true;
            this.var_2089 = null;
            while(this.var_1331.length > 0)
            {
               this.var_1331.pop();
            }
            this.var_1331 = null;
         }
      }
   }
}
