package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1763:String = "WE_DESTROY";
      
      public static const const_321:String = "WE_DESTROYED";
      
      public static const const_1727:String = "WE_OPEN";
      
      public static const const_1811:String = "WE_OPENED";
      
      public static const const_1764:String = "WE_CLOSE";
      
      public static const const_1895:String = "WE_CLOSED";
      
      public static const const_1651:String = "WE_FOCUS";
      
      public static const const_314:String = "WE_FOCUSED";
      
      public static const const_1679:String = "WE_UNFOCUS";
      
      public static const const_1675:String = "WE_UNFOCUSED";
      
      public static const const_1690:String = "WE_ACTIVATE";
      
      public static const const_624:String = "WE_ACTIVATED";
      
      public static const const_1729:String = "WE_DEACTIVATE";
      
      public static const const_528:String = "WE_DEACTIVATED";
      
      public static const const_324:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_514:String = "WE_UNSELECT";
      
      public static const const_582:String = "WE_UNSELECTED";
      
      public static const const_1898:String = "WE_LOCK";
      
      public static const const_1887:String = "WE_LOCKED";
      
      public static const const_1786:String = "WE_UNLOCK";
      
      public static const const_1730:String = "WE_UNLOCKED";
      
      public static const const_916:String = "WE_ENABLE";
      
      public static const const_264:String = "WE_ENABLED";
      
      public static const const_911:String = "WE_DISABLE";
      
      public static const const_291:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_411:String = "WE_RELOCATED";
      
      public static const const_1159:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1758:String = "WE_MINIMIZE";
      
      public static const const_1813:String = "WE_MINIMIZED";
      
      public static const const_1748:String = "WE_MAXIMIZE";
      
      public static const const_1860:String = "WE_MAXIMIZED";
      
      public static const const_1779:String = "WE_RESTORE";
      
      public static const const_1775:String = "WE_RESTORED";
      
      public static const const_302:String = "WE_CHILD_ADDED";
      
      public static const const_439:String = "WE_CHILD_REMOVED";
      
      public static const const_191:String = "WE_CHILD_RELOCATED";
      
      public static const const_124:String = "WE_CHILD_RESIZED";
      
      public static const const_352:String = "WE_CHILD_ACTIVATED";
      
      public static const const_623:String = "WE_PARENT_ADDED";
      
      public static const const_1865:String = "WE_PARENT_REMOVED";
      
      public static const const_1646:String = "WE_PARENT_RELOCATED";
      
      public static const const_918:String = "WE_PARENT_RESIZED";
      
      public static const const_1245:String = "WE_PARENT_ACTIVATED";
      
      public static const const_182:String = "WE_OK";
      
      public static const const_609:String = "WE_CANCEL";
      
      public static const const_112:String = "WE_CHANGE";
      
      public static const const_546:String = "WE_SCROLL";
      
      public static const const_179:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_703:IWindow;
      
      protected var var_1092:Boolean;
      
      protected var var_485:Boolean;
      
      protected var var_481:Boolean;
      
      protected var var_704:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_703 = param3;
         _loc5_.var_485 = param4;
         _loc5_.var_481 = false;
         _loc5_.var_704 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_703;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_485;
      }
      
      public function recycle() : void
      {
         if(this.var_481)
         {
            throw new Error("Event already recycled!");
         }
         this.var_703 = null;
         this._window = null;
         this.var_481 = true;
         this.var_1092 = false;
         this.var_704.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1092;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1092 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1092;
      }
      
      public function stopPropagation() : void
      {
         this.var_1092 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1092 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_485 + " window: " + this._window + " }";
      }
   }
}
