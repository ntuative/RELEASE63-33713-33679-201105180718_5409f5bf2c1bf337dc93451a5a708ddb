package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2959:uint;
      
      private var var_150:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_278:IWindowContext;
      
      private var var_1268:IMouseDraggingService;
      
      private var var_1264:IMouseScalingService;
      
      private var var_1265:IMouseListenerService;
      
      private var var_1267:IFocusManagerService;
      
      private var var_1266:IToolTipAgentService;
      
      private var var_1269:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2959 = 0;
         this.var_150 = param2;
         this.var_278 = param1;
         this.var_1268 = new WindowMouseDragger(param2);
         this.var_1264 = new WindowMouseScaler(param2);
         this.var_1265 = new WindowMouseListener(param2);
         this.var_1267 = new FocusManager(param2);
         this.var_1266 = new WindowToolTipAgent(param2);
         this.var_1269 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1268 != null)
         {
            this.var_1268.dispose();
            this.var_1268 = null;
         }
         if(this.var_1264 != null)
         {
            this.var_1264.dispose();
            this.var_1264 = null;
         }
         if(this.var_1265 != null)
         {
            this.var_1265.dispose();
            this.var_1265 = null;
         }
         if(this.var_1267 != null)
         {
            this.var_1267.dispose();
            this.var_1267 = null;
         }
         if(this.var_1266 != null)
         {
            this.var_1266.dispose();
            this.var_1266 = null;
         }
         if(this.var_1269 != null)
         {
            this.var_1269.dispose();
            this.var_1269 = null;
         }
         this.var_150 = null;
         this.var_278 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1268;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1264;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1265;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1267;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1266;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1269;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
