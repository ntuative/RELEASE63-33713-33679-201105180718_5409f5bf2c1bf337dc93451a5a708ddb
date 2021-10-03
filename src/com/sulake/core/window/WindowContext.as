package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_513:uint = 0;
      
      public static const const_1894:uint = 1;
      
      public static const const_2132:int = 0;
      
      public static const const_2152:int = 1;
      
      public static const const_1985:int = 2;
      
      public static const const_2184:int = 3;
      
      public static const const_1662:int = 4;
      
      public static const const_385:int = 5;
      
      public static var var_402:IEventQueue;
      
      private static var var_622:IEventProcessor;
      
      private static var var_1807:uint = const_513;
      
      private static var stage:Stage;
      
      private static var var_163:IWindowRenderer;
       
      
      private var var_2478:EventProcessorState;
      
      private var var_2480:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_130:DisplayObjectContainer;
      
      protected var var_2974:Boolean = true;
      
      protected var var_1347:Error;
      
      protected var var_2145:int = -1;
      
      protected var var_1346:IInternalWindowServices;
      
      protected var var_1618:IWindowParser;
      
      protected var var_2919:IWindowFactory;
      
      protected var var_85:IDesktopWindow;
      
      protected var var_1619:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_568:Boolean = false;
      
      private var var_2479:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_163 = param2;
         this._localization = param4;
         this.var_130 = param5;
         this.var_1346 = new ServiceManager(this,param5);
         this.var_2919 = param3;
         this.var_1618 = new WindowParser(this);
         this.var_2480 = param7;
         if(!stage)
         {
            if(this.var_130 is Stage)
            {
               stage = this.var_130 as Stage;
            }
            else if(this.var_130.stage)
            {
               stage = this.var_130.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_85 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_85.limits.maxWidth = param6.width;
         this.var_85.limits.maxHeight = param6.height;
         this.var_130.addChild(this.var_85.getDisplayObject());
         this.var_130.doubleClickEnabled = true;
         this.var_130.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2478 = new EventProcessorState(var_163,this.var_85,this.var_85,null,this.var_2480);
         inputMode = const_513;
         this.var_1619 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1807;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_402)
         {
            if(var_402 is IDisposable)
            {
               IDisposable(var_402).dispose();
            }
         }
         if(var_622)
         {
            if(var_622 is IDisposable)
            {
               IDisposable(var_622).dispose();
            }
         }
         switch(value)
         {
            case const_513:
               var_402 = new MouseEventQueue(stage);
               var_622 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1894:
               var_402 = new TabletEventQueue(stage);
               var_622 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_513;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_130.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_130.removeChild(IGraphicContextHost(this.var_85).getGraphicContext(true) as DisplayObject);
            this.var_85.destroy();
            this.var_85 = null;
            this.var_1619.destroy();
            this.var_1619 = null;
            if(this.var_1346 is IDisposable)
            {
               IDisposable(this.var_1346).dispose();
            }
            this.var_1346 = null;
            this.var_1618.dispose();
            this.var_1618 = null;
            var_163 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1347;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2145;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1347 = param2;
         this.var_2145 = param1;
         if(this.var_2974)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1347 = null;
         this.var_2145 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1346;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1618;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2919;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_85;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_85.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1662,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1619;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_85,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_85)
         {
            this.var_85 = null;
         }
         if(param1.state != WindowState.const_556)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_163.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_568 = true;
         if(this.var_1347)
         {
            throw this.var_1347;
         }
         var_622.process(this.var_2478,var_402);
         this.var_568 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2479 = true;
         var_163.update(param1);
         this.var_2479 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_85 != null && !this.var_85.disposed)
         {
            if(this.var_130 is Stage)
            {
               this.var_85.limits.maxWidth = Stage(this.var_130).stageWidth;
               this.var_85.limits.maxHeight = Stage(this.var_130).stageHeight;
               this.var_85.width = Stage(this.var_130).stageWidth;
               this.var_85.height = Stage(this.var_130).stageHeight;
            }
            else
            {
               this.var_85.limits.maxWidth = this.var_130.width;
               this.var_85.limits.maxHeight = this.var_130.height;
               this.var_85.width = this.var_130.width;
               this.var_85.height = this.var_130.height;
            }
         }
      }
   }
}
