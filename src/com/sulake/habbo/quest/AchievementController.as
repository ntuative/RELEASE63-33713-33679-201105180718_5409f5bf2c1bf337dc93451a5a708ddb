package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.inventory.achievements.AchievementData;
   import com.sulake.habbo.communication.messages.outgoing.inventory.achievements.GetAchievementsComposer;
   import com.sulake.habbo.session.BadgeInfo;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class AchievementController implements IDisposable, IUpdateReceiver
   {
      
      private static const const_657:int = 3;
      
      private static const const_1473:int = 10;
      
      private static const const_1462:int = 8;
      
      private static const const_1471:int = 6;
      
      private static const const_1464:int = 3;
      
      private static const const_1468:int = 2;
      
      private static const const_1049:int = 6;
      
      private static const const_1472:int = 180;
      
      private static const const_1470:int = 246;
      
      private static const const_1338:int = 45;
      
      private static const const_1465:Point = new Point(115,93);
      
      private static const const_1466:Point = new Point(72,1);
      
      private static const const_1048:int = 40;
      
      private static const const_1467:int = 20;
      
      private static const const_1469:int = 3;
      
      private static const const_1463:int = 10;
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var _window:IFrameWindow;
      
      private var var_650:IWindowContainer;
      
      private var var_801:IWindowContainer;
      
      private var var_439:IWindowContainer;
      
      private var var_1502:IWindowContainer;
      
      private var var_974:IWindowContainer;
      
      private var var_1230:IWindowContainer;
      
      private var var_106:AchievementCategories;
      
      private var _category:AchievementCategory;
      
      private var var_83:AchievementData;
      
      private var var_448:Timer;
      
      private var var_800:Dictionary;
      
      private var var_799:ProgressBar;
      
      private var var_798:ProgressBar;
      
      private var var_1231:Matrix;
      
      private var var_1910:ColorMatrixFilter;
      
      private var var_1503:AchievementData;
      
      private var _pendingLevelTimer:Timer;
      
      private var var_649:Dictionary;
      
      public function AchievementController(param1:HabboQuestEngine)
      {
         this.var_800 = new Dictionary();
         this.var_649 = new Dictionary();
         super();
         this._questEngine = param1;
         this.var_448 = new Timer(100,1);
         this.var_448.addEventListener(TimerEvent.TIMER,this.doBadgeRefresh);
         this._pendingLevelTimer = new Timer(2000,1);
         this._pendingLevelTimer.addEventListener(TimerEvent.TIMER,this.switchIntoPendingLevel);
         this.var_1231 = new Matrix();
         this.var_1910 = this.createGrayscaleFilter();
         this.var_649[16] = 1;
         this.var_649[28] = 6;
         this.var_649[38] = 4;
         this.var_649[39] = 3;
         this.var_649[40] = 1;
      }
      
      public static function moveAllChildrenToColumn(param1:IWindowContainer, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_);
            if(_loc5_ != null && _loc5_.visible && _loc5_.height > 0)
            {
               _loc5_.y = param2;
               param2 += _loc5_.height + param3;
            }
            _loc4_++;
         }
      }
      
      public static function getLowestPoint(param1:IWindowContainer) : int
      {
         var _loc4_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = param1.getChildAt(_loc3_);
            if(_loc4_.visible)
            {
               _loc2_ = Math.max(_loc2_,_loc4_.y + _loc4_.height);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         this.var_800 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_448)
         {
            this.var_448.removeEventListener(TimerEvent.TIMER,this.doBadgeRefresh);
            this.var_448.reset();
            this.var_448 = null;
         }
         if(this._pendingLevelTimer)
         {
            this._pendingLevelTimer.removeEventListener(TimerEvent.TIMER,this.switchIntoPendingLevel);
            this._pendingLevelTimer.reset();
            this._pendingLevelTimer = null;
         }
         if(this.var_799)
         {
            this.var_799.dispose();
            this.var_799 = null;
         }
         if(this.var_798)
         {
            this.var_798.dispose();
            this.var_798 = null;
         }
         this.var_650 = null;
         this.var_439 = null;
         this.var_439 = null;
         this.var_974 = null;
         this.var_1502 = null;
         this.var_1230 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      public function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      public function onRoomExit() : void
      {
         this.close();
      }
      
      public function onToolbarClick() : void
      {
         if(this.isVisible())
         {
            this.close();
         }
         else if(this.var_106 == null)
         {
            this._questEngine.send(new GetAchievementsComposer());
         }
         else
         {
            this.refresh();
            this._window.visible = true;
            this._window.activate();
         }
      }
      
      public function onAchievements(param1:Array) : void
      {
         if(this.var_106 == null)
         {
            this.var_106 = new AchievementCategories(param1);
         }
         this.refresh();
         this._window.visible = true;
         this._window.activate();
      }
      
      public function onAchievement(param1:AchievementData) : void
      {
         var _loc2_:Boolean = false;
         if(this.var_106 != null)
         {
            _loc2_ = this.var_83 && this.var_83.type == param1.type;
            if(_loc2_ && param1.level > this.var_83.level)
            {
               this.var_83.setMaxProgress();
               this.var_1503 = param1;
               this._pendingLevelTimer.start();
            }
            else
            {
               this.var_106.update(param1);
               if(_loc2_)
               {
                  this.var_83 = param1;
               }
            }
            if(this._window && this._window.visible)
            {
               this.refresh();
            }
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshCategoryList();
         this.refreshCategoryListFooter();
         this.refreshAchievementsHeader();
         this.refreshAchievementsFooter();
         this.refreshAchievementList();
         this.refreshAchievementDetails();
         moveAllChildrenToColumn(this._window.content,0,4);
         this._window.height = getLowestPoint(this._window.content) + const_1338;
      }
      
      private function refreshCategoryList() : void
      {
         var _loc3_:Boolean = false;
         if(this._category != null)
         {
            this.var_650.visible = false;
            return;
         }
         this.var_650.visible = true;
         var _loc1_:Array = this.var_106.categoryList;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < _loc1_.length)
            {
               this.refreshCategoryEntry(_loc2_,_loc1_[_loc2_]);
            }
            else
            {
               _loc3_ = this.refreshCategoryEntry(_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            _loc2_++;
         }
         this.var_650.height = getLowestPoint(this.var_650);
      }
      
      private function refreshCategoryListFooter() : void
      {
         if(this._category != null)
         {
            this.var_1230.visible = false;
            return;
         }
         this.var_1230.visible = true;
         this.var_798.refresh(this.var_106.getProgress(),this.var_106.getMaxProgress(),0);
      }
      
      private function refreshAchievementList() : void
      {
         var _loc3_:Boolean = false;
         if(this._category == null)
         {
            this.var_801.visible = false;
            return;
         }
         this.var_801.visible = true;
         Logger.log(this._category.code + " has " + this._category.achievements.length + " achievemenets");
         var _loc1_:Array = this._category.achievements;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < _loc1_.length)
            {
               this.refreshAchievementEntry(_loc2_,_loc1_[_loc2_]);
            }
            else
            {
               _loc3_ = this.refreshAchievementEntry(_loc2_,null);
               if(_loc3_)
               {
                  break;
               }
            }
            _loc2_++;
         }
         this.var_801.height = getLowestPoint(this.var_801);
      }
      
      private function refreshAchievementsHeader() : void
      {
         if(this._category == null)
         {
            this.var_974.visible = false;
            return;
         }
         this.var_974.visible = true;
         this.var_974.findChildByName("category_name_txt").caption = this._questEngine.getAchievementCategoryName(this._category);
         this._questEngine.localization.registerParameter("achievements.details.categoryprogress","progress","" + this._category.getProgress());
         this._questEngine.localization.registerParameter("achievements.details.categoryprogress","limit","" + this._category.getMaxProgress());
         this._questEngine.setupAchievementCategoryImage(this.var_974,this._category);
      }
      
      private function refreshAchievementsFooter() : void
      {
         if(this._category == null)
         {
            this.var_1502.visible = false;
            return;
         }
         this.var_1502.visible = true;
      }
      
      private function refreshAchievementDetails() : void
      {
         if(this.var_83 == null)
         {
            this.var_439.visible = false;
            return;
         }
         this.var_439.visible = true;
         var _loc1_:String = this.getAchievedBadgeId(this.var_83);
         this.var_439.findChildByName("achievement_name_txt").caption = this._questEngine.localization.getBadgeName(_loc1_);
         this.var_439.findChildByName("achievement_desc_txt").caption = this._questEngine.localization.getBadgeDesc(_loc1_);
         this._questEngine.localization.registerParameter("achievements.details.level","level","" + (!!this.var_83.finalLevel ? this.var_83.level : this.var_83.level - 1));
         this._questEngine.localization.registerParameter("achievements.details.level","limit","" + this.var_83.levelCount);
         this._questEngine.refreshReward(this.var_439,this.var_83.levelRewardPointType,this.var_83.levelRewardPoints);
         this.refreshBadgeImageLarge(this.var_439,this.var_83);
         this.var_799.refresh(this.var_83.currentPoints,this.var_83.scoreLimit,this.var_83.type * 10000 + this.var_83.level);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IFrameWindow(this._questEngine.getXmlWindow("Achievements"));
         this._window.findChildByTag("close").procedure = this.onWindowClose;
         this._window.findChildByName("back_button").procedure = this.onBack;
         this._window.center();
         this._window.y = const_1467;
         this.var_650 = IWindowContainer(this._window.findChildByName("categories_cont"));
         this.var_974 = IWindowContainer(this._window.findChildByName("achievements_header_cont"));
         this.var_801 = IWindowContainer(this._window.findChildByName("achievements_cont"));
         this.var_439 = IWindowContainer(this._window.findChildByName("achievement_cont"));
         this.var_1502 = IWindowContainer(this._window.findChildByName("achievements_footer_cont"));
         this.var_1230 = IWindowContainer(this._window.findChildByName("categories_footer_cont"));
         this.var_799 = new ProgressBar(this._questEngine,this.var_439,const_1472,"achievements.details.progress",true,const_1465);
         this.var_798 = new ProgressBar(this._questEngine,this.var_1230,const_1470,"achievements.categories.totalprogress",true,const_1466);
      }
      
      private function refreshCategoryEntry(param1:int, param2:AchievementCategory) : Boolean
      {
         var _loc3_:IWindowContainer = IWindowContainer(this.var_650.getChildByName("" + param1));
         var _loc4_:int = Math.floor(param1 / const_657);
         var _loc5_:* = _loc4_ < const_1464;
         if(_loc3_ == null)
         {
            if(param2 == null && !_loc5_)
            {
               return true;
            }
            _loc3_ = IWindowContainer(this._questEngine.getXmlWindow("AchievementCategory"));
            _loc3_.name = "" + param1;
            this.var_650.addChild(_loc3_);
            new PendingImage(this._questEngine,IBitmapWrapperWindow(_loc3_.findChildByName("category_bg_act")),"achievement_category_bkg_3");
            new PendingImage(this._questEngine,IBitmapWrapperWindow(_loc3_.findChildByName("category_bg_inact")),"achievement_category_bkg_empty_3");
            _loc3_.findChildByName("category_bg_act").procedure = this.onSelectCategory;
            _loc3_.x = (_loc3_.width + const_1473) * (param1 % const_657);
            _loc3_.y = (_loc3_.height + const_1462) * Math.floor(param1 / const_657) + const_1471;
         }
         _loc3_.findChildByName("category_bg_act").id = param1;
         _loc3_.findChildByName("category_bg_inact").visible = param2 == null;
         _loc3_.findChildByName("category_bg_act").visible = param2 != null;
         _loc3_.findChildByName("header_txt").visible = param2 != null;
         _loc3_.findChildByName("completion_txt").visible = param2 != null;
         _loc3_.findChildByName("category_pic_bitmap").visible = param2 != null;
         if(param2)
         {
            _loc3_.findChildByName("header_txt").caption = this._questEngine.getAchievementCategoryName(param2);
            _loc3_.findChildByName("completion_txt").caption = param2.getProgress() + "/" + param2.getMaxProgress();
            this._questEngine.setupAchievementCategoryImage(_loc3_,param2);
            _loc3_.visible = true;
         }
         else if(_loc5_)
         {
            _loc3_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
         }
         return false;
      }
      
      private function refreshAchievementEntry(param1:int, param2:AchievementData) : Boolean
      {
         var _loc8_:* = null;
         var _loc3_:IWindowContainer = IWindowContainer(this.var_801.getChildByName("" + param1));
         var _loc4_:int = Math.floor(param1 / const_1049);
         var _loc5_:* = _loc4_ < const_1468;
         if(_loc3_ == null)
         {
            if(param2 == null && !_loc5_)
            {
               return true;
            }
            _loc3_ = IWindowContainer(this._questEngine.getXmlWindow("Achievement"));
            _loc3_.name = "" + param1;
            this.var_801.addChild(_loc3_);
            _loc8_ = _loc3_.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
            _loc8_.bitmap = new BitmapData(_loc8_.width,_loc8_.height,true,16777215);
            new PendingImage(this._questEngine,_loc3_.findChildByName("bg_selected_bitmap"),"achievement_active");
            new PendingImage(this._questEngine,_loc3_.findChildByName("bg_unselected_bitmap"),"achievement_inactive");
            _loc3_.x = _loc3_.width * (param1 % const_1049);
            _loc3_.y = _loc3_.height * _loc4_ + const_1469;
         }
         var _loc6_:IWindow = _loc3_.findChildByName("bg_unselected_bitmap");
         var _loc7_:IWindow = _loc3_.findChildByName("bg_selected_bitmap");
         _loc6_.id = param1;
         this.refreshBadgeImage(_loc3_,param2);
         if(param2)
         {
            _loc6_.visible = param2 != this.var_83;
            _loc7_.visible = param2 == this.var_83;
            _loc6_.procedure = this.onSelectAchievement;
            _loc3_.visible = true;
         }
         else if(_loc5_)
         {
            _loc7_.visible = false;
            _loc6_.visible = true;
            _loc6_.procedure = null;
            _loc3_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
         }
         return false;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      private function onSelectCategory(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.id;
         Logger.log("Category index: " + _loc3_);
         this._category = this.var_106.categoryList[_loc3_];
         this.var_83 = this._category.achievements[0];
         Logger.log("Category: " + this._category.code);
         this.refresh();
      }
      
      private function onSelectAchievement(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.id;
         this.var_83 = this._category.achievements[_loc3_];
         this.refresh();
      }
      
      private function onBack(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._category = null;
         this.var_83 = null;
         this.refresh();
      }
      
      private function refreshBadgeImage(param1:IWindowContainer, param2:AchievementData) : void
      {
         var _loc9_:* = null;
         var _loc3_:IBitmapWrapperWindow = param1.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
         if(param2 == null)
         {
            _loc3_.visible = false;
            return;
         }
         var _loc4_:String = this.getAchievedBadgeId(param2);
         var _loc5_:BitmapData = this.var_800[_loc4_];
         var _loc6_:Boolean = false;
         if(_loc5_ == null)
         {
            _loc9_ = this._questEngine.sessionDataManager.getBadgeImageWithInfo(_loc4_);
            _loc5_ = _loc9_.image;
            _loc6_ = _loc9_.placeHolder;
            this.var_800[_loc4_] = _loc5_;
         }
         var _loc7_:int = const_1048 - _loc5_.height + this.getPositionFix(param2.type);
         var _loc8_:Point = new Point((_loc3_.width - _loc5_.width) / 2,!!_loc6_ ? Number(const_1463) : Number(_loc7_));
         _loc3_.bitmap.fillRect(_loc3_.bitmap.rect,16777215);
         if(param2.firstLevelAchieved)
         {
            _loc3_.bitmap.copyPixels(_loc5_,_loc5_.rect,_loc8_,null,null,true);
         }
         else
         {
            _loc3_.bitmap.applyFilter(_loc5_,_loc5_.rect,_loc8_,this.var_1910);
         }
         _loc3_.visible = false;
         _loc3_.visible = true;
      }
      
      private function refreshBadgeImageLarge(param1:IWindowContainer, param2:AchievementData) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.findChildByName("achievement_pic_bitmap") as IBitmapWrapperWindow;
         var _loc4_:String = this.getAchievedBadgeId(param2);
         var _loc5_:BitmapData = this.var_800[_loc4_];
         if(_loc5_ == null)
         {
            _loc5_ = this._questEngine.sessionDataManager.getBadgeImage(_loc4_);
            this.var_800[_loc4_] = _loc5_;
         }
         if(_loc3_.bitmap == null)
         {
            _loc3_.bitmap = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         }
         var _loc6_:int = 2 * (const_1048 - _loc5_.height + this.getPositionFix(param2.type));
         this.var_1231.identity();
         this.var_1231.scale(2,2);
         this.var_1231.translate((_loc3_.width - _loc5_.width * 2) / 2,_loc6_);
         _loc3_.bitmap.fillRect(_loc3_.bitmap.rect,16777215);
         _loc3_.bitmap.draw(_loc5_,this.var_1231);
         if(!param2.firstLevelAchieved)
         {
            _loc3_.bitmap.applyFilter(_loc3_.bitmap,_loc3_.bitmap.rect,new Point(0,0),this.var_1910);
         }
         _loc3_.visible = false;
         _loc3_.visible = true;
      }
      
      private function doBadgeRefresh(param1:TimerEvent) : void
      {
         this.var_448.reset();
         this.refresh();
      }
      
      private function switchIntoPendingLevel(param1:TimerEvent) : void
      {
         this.var_83 = this.var_1503;
         this.var_106.update(this.var_1503);
         this.var_1503 = null;
         this.refresh();
      }
      
      public function onBadgeImageReady(param1:BadgeImageReadyEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         this.var_800[param1.badgeId] = param1.badgeImage;
         if(!this.var_448.running)
         {
            this.var_448.start();
         }
      }
      
      private function createGrayscaleFilter() : ColorMatrixFilter
      {
         var _loc1_:* = 0.3333333333333333;
         var _loc2_:Number = 1 - _loc1_ * 2;
         var _loc3_:Array = [_loc2_,_loc1_,_loc1_,0,0,_loc1_,_loc2_,_loc1_,0,0,_loc1_,_loc1_,_loc2_,0,0,0,0,0,1,0];
         return new ColorMatrixFilter(_loc3_);
      }
      
      public function update(param1:uint) : void
      {
         if(this.var_799 != null)
         {
            this.var_799.updateView();
         }
         if(this.var_798 != null)
         {
            this.var_798.updateView();
         }
      }
      
      private function getAchievedBadgeId(param1:AchievementData) : String
      {
         return !!param1.finalLevel ? param1.badgeId : this._questEngine.localization.getPreviousLevelBadgeId(param1.badgeId);
      }
      
      private function getPositionFix(param1:int) : int
      {
         return !!this.var_649[param1] ? int(this.var_649[param1]) : 0;
      }
   }
}