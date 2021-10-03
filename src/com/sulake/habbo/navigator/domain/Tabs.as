package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_322:int = 1;
      
      public static const const_221:int = 2;
      
      public static const const_247:int = 3;
      
      public static const const_358:int = 4;
      
      public static const const_206:int = 5;
      
      public static const const_403:int = 1;
      
      public static const const_914:int = 2;
      
      public static const const_798:int = 3;
      
      public static const const_968:int = 4;
      
      public static const const_277:int = 5;
      
      public static const const_821:int = 6;
      
      public static const const_856:int = 7;
      
      public static const const_238:int = 8;
      
      public static const const_388:int = 9;
      
      public static const const_1993:int = 10;
      
      public static const const_794:int = 11;
      
      public static const const_518:int = 12;
       
      
      private var var_411:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_411 = new Array();
         this.var_411.push(new Tab(this._navigator,const_322,const_518,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_492));
         this.var_411.push(new Tab(this._navigator,const_221,const_403,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_492));
         this.var_411.push(new Tab(this._navigator,const_358,const_794,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1311));
         this.var_411.push(new Tab(this._navigator,const_247,const_277,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_492));
         this.var_411.push(new Tab(this._navigator,const_206,const_238,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_786));
         this.setSelectedTab(const_322);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_358;
      }
      
      public function get tabs() : Array
      {
         return this.var_411;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_411)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_411)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_411)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
