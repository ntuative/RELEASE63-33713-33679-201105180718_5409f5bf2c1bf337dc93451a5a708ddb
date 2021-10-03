package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_297:int = 0;
      
      private static const const_1032:int = 1;
      
      private static const const_1034:int = 2;
      
      private static const const_1041:int = 3;
      
      private static const const_1033:int = 4;
      
      private static const const_1038:int = 5;
      
      private static const const_1037:int = 6;
      
      private static const const_1422:int = 72;
      
      private static const const_1428:int = 4;
      
      private static const const_1035:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1039:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1042:int = 6;
      
      private static const const_1429:int = 4;
      
      private static const const_654:int = 2;
      
      private static const const_1040:int = 200;
      
      private static const const_298:Array = ["a","b","c","d"];
      
      private static const const_1036:int = 10000;
      
      private static const const_1425:int = 0;
      
      private static const const_655:int = -1;
      
      private static const const_1427:Point = new Point(10,87);
      
      private static const const_1426:int = 162;
      
      private static const const_1423:Number = 0.01;
      
      private static const const_1421:Number = 100;
      
      private static const const_1424:int = 1000;
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_205:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_518:Timer;
      
      private var var_779:ProgressBar;
      
      private var var_310:int = 0;
      
      private var var_951:int = 0;
      
      private var var_1477:int = 0;
      
      private var var_1195:int = -1;
      
      private var var_780:int = -1;
      
      private var var_952:int = -1;
      
      private var var_1196:int;
      
      private var var_1478:int;
      
      private var var_2540:Boolean;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         this.var_205 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_518)
         {
            this.var_518.stop();
            this.var_518 = null;
         }
         if(this.var_779)
         {
            this.var_779.dispose();
            this.var_779 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.clearPrompt();
            this.var_205 = param1;
            this.var_951 = 0;
            this.refreshTrackerDetails();
            this.var_1195 = 0;
            this.var_310 = const_1041;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_205 = null;
         if(this._window)
         {
            this.clearPrompt();
            this.var_779.refresh(0,100,-1);
            this.var_310 = const_1034;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this._questEngine.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.getDefaultCampaign();
         if(this.var_518 == null && _loc1_ && _loc2_ != "" && this._questEngine.isQuestingEnabled())
         {
            _loc3_ = int(this._questEngine.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_518 = new Timer(_loc3_ * 1000,1);
            this.var_518.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_518.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         this.var_205 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.hideSuccessFrames();
         if(_loc2_)
         {
            this.setupPrompt(this.var_780,const_1429,false);
         }
         else
         {
            this._window.x = this._window.desktop.width;
            this.var_310 = const_1032;
            this.setupPrompt(const_1425,const_654,false);
         }
         this._window.visible = true;
         this._questEngine.notifications.setQuestTrackerVisible(true);
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this._questEngine.isQuestWithPrompts(this.var_205))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_298.length)
         {
            this._questEngine.setupPromptFrameImage(this._window,this.var_205,const_298[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._questEngine.getXmlWindow("QuestTracker"));
         this._window.y = const_1422;
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this._questEngine,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1042)
         {
            new PendingImage(this._questEngine,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_779 = new ProgressBar(this._questEngine,IWindowContainer(this._window.findChildByName("content_cont")),const_1426,"quests.tracker.progress",false,const_1427);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1042)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_298.length)
         {
            this.getPromptFrame(const_298[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this._questEngine.localization.registerParameter("quests.tracker.caption","quest_name",this._questEngine.getQuestName(this.var_205));
         this._window.findChildByName("desc_txt").caption = this._questEngine.getQuestDesc(this.var_205);
         this._window.findChildByName("more_info_txt").visible = true;
         this._window.findChildByName("more_info_region").visible = true;
         var _loc1_:int = Math.round(100 * this.var_205.completedSteps / this.var_205.totalSteps);
         this.var_779.refresh(_loc1_,100,this.var_205.id);
         this._questEngine.setupQuestImage(this._window,this.var_205);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this._questEngine.questController.questDetails.showDetails(this.var_205);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_779.updateView();
         switch(this.var_310)
         {
            case const_1032:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * const_1423));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_310 = const_297;
                  this._window.x = _loc2_;
               }
               break;
            case const_1034:
               _loc2_ = this._window.desktop.width;
               _loc3_ = _loc2_ - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * const_1421 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_310 = const_297;
                  this._window.x = _loc2_;
                  this._window.visible = false;
                  this._questEngine.notifications.setQuestTrackerVisible(false);
               }
               break;
            case const_1041:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1039[this.var_1195]).visible = true;
               ++this.var_1195;
               if(this.var_1195 >= const_1039.length)
               {
                  this.var_310 = const_1038;
                  this.var_1477 = const_1424;
               }
               break;
            case const_1037:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1196 -= param1;
               this.getPromptFrame(const_298[this.var_952]).visible = true;
               if(this.var_1196 < 0)
               {
                  this.var_1196 = const_1040;
                  ++this.var_952;
                  if(this.var_952 >= const_298.length)
                  {
                     this.var_952 = 0;
                     --this.var_1478;
                     if(this.var_1478 < 1)
                     {
                        this.setupPrompt(const_1036,const_654,true);
                        this.var_310 = const_297;
                     }
                  }
               }
               break;
            case const_1033:
               if(this.var_951 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_310 = const_297;
                  this.setupPrompt(const_1036,const_654,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1035[this.var_951];
                  ++this.var_951;
               }
               break;
            case const_1038:
               this.var_1477 -= param1;
               if(this.var_1477 < 0)
               {
                  this.var_310 = const_297;
                  this._window.visible = false;
               }
               break;
            case const_297:
               if(this.var_780 != const_655)
               {
                  this.var_780 -= param1;
                  if(this.var_780 < 0)
                  {
                     this.var_780 = const_655;
                     if(this.var_205 != null && this._questEngine.isQuestWithPrompts(this.var_205))
                     {
                        if(this.var_2540)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_310 = const_1037;
                           this.var_952 = 0;
                           this.var_1196 = const_1040;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return this._window.desktop.width - this._window.width - const_1428;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_518.reset();
            this.var_518.start();
         }
         else
         {
            this._questEngine.questController.questDetails.openForNextQuest = this._questEngine.configuration.getKey("questing.showDetailsForNextQuest") == "true";
            this._questEngine.send(new StartCampaignMessageComposer(this.getDefaultCampaign()));
         }
      }
      
      private function getDefaultCampaign() : String
      {
         var _loc1_:String = this._questEngine.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this._questEngine.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function clearPrompt() : void
      {
         this.setupPrompt(const_655,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_780 = param1;
         this.var_1478 = param2;
         this.var_2540 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_951 = 0;
         this.var_310 = const_1033;
      }
   }
}
