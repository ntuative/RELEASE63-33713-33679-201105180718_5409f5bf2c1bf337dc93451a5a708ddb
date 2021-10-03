package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_183:IWindowContainer;
      
      private var var_2955:int;
      
      private var var_378:RoomEventViewCtrl;
      
      private var var_381:Timer;
      
      private var var_146:RoomSettingsCtrl;
      
      private var var_270:RoomThumbnailCtrl;
      
      private var var_1002:TagRenderer;
      
      private var var_379:IWindowContainer;
      
      private var var_380:IWindowContainer;
      
      private var var_666:IWindowContainer;
      
      private var var_1959:IWindowContainer;
      
      private var var_1957:IWindowContainer;
      
      private var var_1252:IWindowContainer;
      
      private var var_945:ITextWindow;
      
      private var var_1004:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_822:ITextWindow;
      
      private var var_1254:ITextWindow;
      
      private var var_1001:ITextWindow;
      
      private var var_819:ITextWindow;
      
      private var var_1533:ITextWindow;
      
      private var var_269:IWindowContainer;
      
      private var var_820:IWindowContainer;
      
      private var var_1532:IWindowContainer;
      
      private var var_1958:ITextWindow;
      
      private var var_665:ITextWindow;
      
      private var var_1960:IWindow;
      
      private var var_1251:IContainerButtonWindow;
      
      private var var_1255:IContainerButtonWindow;
      
      private var var_1256:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1253:IContainerButtonWindow;
      
      private var var_1535:IButtonWindow;
      
      private var var_1534:IButtonWindow;
      
      private var var_1536:IButtonWindow;
      
      private var var_821:IWindowContainer;
      
      private var var_1257:ITextWindow;
      
      private var var_1003:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_823:IButtonWindow;
      
      private var var_2956:String;
      
      private const const_924:int = 75;
      
      private const const_980:int = 3;
      
      private const const_693:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_378 = new RoomEventViewCtrl(this._navigator);
         this.var_146 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_270 = new RoomThumbnailCtrl(this._navigator);
         this.var_1002 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_146);
         this.var_381 = new Timer(6000,1);
         this.var_381.addEventListener(TimerEvent.TIMER,this.method_4);
      }
      
      public function dispose() : void
      {
         if(this.var_381)
         {
            this.var_381.removeEventListener(TimerEvent.TIMER,this.method_4);
            this.var_381.reset();
            this.var_381 = null;
         }
         this._navigator = null;
         this.var_378 = null;
         this.var_146 = null;
         this.var_270 = null;
         if(this.var_1002)
         {
            this.var_1002.dispose();
            this.var_1002 = null;
         }
         this.var_183 = null;
         this.var_379 = null;
         this.var_380 = null;
         this.var_666 = null;
         this.var_1959 = null;
         this.var_1957 = null;
         this.var_1252 = null;
         this.var_945 = null;
         this.var_1004 = null;
         this._ownerName = null;
         this.var_822 = null;
         this.var_1254 = null;
         this.var_1001 = null;
         this.var_819 = null;
         this.var_1533 = null;
         this.var_269 = null;
         this.var_820 = null;
         this.var_1532 = null;
         this.var_1958 = null;
         this.var_665 = null;
         this.var_1960 = null;
         this.var_1251 = null;
         this.var_1255 = null;
         this.var_1256 = null;
         this._remFavouriteButton = null;
         this.var_1253 = null;
         this.var_1535 = null;
         this.var_1534 = null;
         this.var_1536 = null;
         this.var_821 = null;
         this.var_1257 = null;
         this.var_1003 = null;
         this._buttons = null;
         this.var_823 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_381.reset();
         this.var_378.active = true;
         this.var_146.active = false;
         this.var_270.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_381.reset();
         this.var_146.load(param1);
         this.var_146.active = true;
         this.var_378.active = false;
         this.var_270.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_146.active = true;
         this.var_378.active = false;
         this.var_270.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_381.reset();
         this.var_146.active = false;
         this.var_378.active = false;
         this.var_270.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_381.reset();
         this.var_378.active = false;
         this.var_146.active = false;
         this.var_270.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_980;
         this._window.y = this.const_924;
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_183,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_183.height = Util.getLowestPoint(this.var_183);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_693;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_379);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_146.refresh(this.var_379);
         this.var_270.refresh(this.var_379);
         Util.moveChildrenToColumn(this.var_379,["room_details","room_buttons"],0,2);
         this.var_379.height = Util.getLowestPoint(this.var_379);
         this.var_379.visible = true;
         Logger.log("XORP: " + this.var_380.visible + ", " + this.var_1252.visible + ", " + this.var_666.visible + ", " + this.var_666.rectangle + ", " + this.var_379.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_269);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_378.refresh(this.var_269);
         if(Util.hasVisibleChildren(this.var_269) && !(this.var_146.active || this.var_270.active))
         {
            Util.moveChildrenToColumn(this.var_269,["event_details","event_buttons"],0,2);
            this.var_269.height = Util.getLowestPoint(this.var_269);
            this.var_269.visible = true;
         }
         else
         {
            this.var_269.visible = false;
         }
         Logger.log("EVENT: " + this.var_269.visible + ", " + this.var_269.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_146.active && !this.var_270.active && !this.var_378.active)
         {
            this.var_821.visible = true;
            this.var_1003.text = this.getEmbedData();
         }
         else
         {
            this.var_821.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_146.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_823)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_823.visible = _loc1_;
            if(this.var_2956 == "0")
            {
               this.var_823.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_823.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_146.active || this.var_270.active)
         {
            return;
         }
         this.var_945.text = param1.roomName;
         this.var_945.height = this.var_945.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_822.text = param1.description;
         this.var_1002.refreshTags(this.var_380,param1.tags);
         this.var_822.visible = false;
         if(param1.description != "")
         {
            this.var_822.height = this.var_822.textHeight + 5;
            this.var_822.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1255,"facebook_logo_small",_loc3_,null,0);
         this.var_1255.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1251,"thumb_up",_loc4_,null,0);
         this.var_1251.visible = _loc4_;
         this.var_819.visible = !_loc4_;
         this.var_1533.visible = !_loc4_;
         this.var_1533.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_380,"home",param2,null,0);
         this._navigator.refreshButton(this.var_380,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_380,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_945.y,0);
         this.var_380.visible = true;
         this.var_380.height = Util.getLowestPoint(this.var_380);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_380.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_146.active || this.var_270.active)
         {
            return;
         }
         this.var_1004.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1004.height = this.var_1004.textHeight + 5;
         this.var_1254.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1254.height = this.var_1254.textHeight + 5;
         Util.moveChildrenToColumn(this.var_666,["public_space_name","public_space_desc"],this.var_1004.y,0);
         this.var_666.visible = true;
         this.var_666.height = Math.max(86,Util.getLowestPoint(this.var_666));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_378.active)
         {
            return;
         }
         this.var_1958.text = param1.eventName;
         this.var_665.text = param1.eventDescription;
         this.var_1002.refreshTags(this.var_820,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_665.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_665.height = this.var_665.textHeight + 5;
            this.var_665.y = Util.getLowestPoint(this.var_820) + 2;
            this.var_665.visible = true;
         }
         this.var_820.visible = true;
         this.var_820.height = Util.getLowestPoint(this.var_820);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_146.active || this.var_270.active)
         {
            return;
         }
         this.var_1535.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1256.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1253.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1252.visible = Util.hasVisibleChildren(this.var_1252);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_378.active)
         {
            return;
         }
         this.var_1534.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1536.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1532.visible = Util.hasVisibleChildren(this.var_1532);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_183 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_379 = IWindowContainer(this.find("room_info"));
         this.var_380 = IWindowContainer(this.find("room_details"));
         this.var_666 = IWindowContainer(this.find("public_space_details"));
         this.var_1959 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1957 = IWindowContainer(this.find("rating_cont"));
         this.var_1252 = IWindowContainer(this.find("room_buttons"));
         this.var_945 = ITextWindow(this.find("room_name"));
         this.var_1004 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_822 = ITextWindow(this.find("room_desc"));
         this.var_1254 = ITextWindow(this.find("public_space_desc"));
         this.var_1001 = ITextWindow(this.find("owner_caption"));
         this.var_819 = ITextWindow(this.find("rating_caption"));
         this.var_1533 = ITextWindow(this.find("rating_txt"));
         this.var_269 = IWindowContainer(this.find("event_info"));
         this.var_820 = IWindowContainer(this.find("event_details"));
         this.var_1532 = IWindowContainer(this.find("event_buttons"));
         this.var_1958 = ITextWindow(this.find("event_name"));
         this.var_665 = ITextWindow(this.find("event_desc"));
         this.var_1255 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1251 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1960 = this.find("staff_pick_button");
         this.var_1256 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1253 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1535 = IButtonWindow(this.find("room_settings_button"));
         this.var_1534 = IButtonWindow(this.find("create_event_button"));
         this.var_1536 = IButtonWindow(this.find("edit_event_button"));
         this.var_821 = IWindowContainer(this.find("embed_info"));
         this.var_1257 = ITextWindow(this.find("embed_info_txt"));
         this.var_1003 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_823 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1256,this.onAddFavouriteClick);
         Util.setProcDirectly(this._remFavouriteButton,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1535,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1253,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1534,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1536,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1003,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1251,this.onThumbUp);
         Util.setProcDirectly(this.var_1960,this.onStaffPick);
         Util.setProcDirectly(this.var_1255,this.onFacebookLike);
         Util.setProcDirectly(this.var_823,this.onZoomClick);
         this._navigator.refreshButton(this.var_1256,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1253,"home",true,null,0);
         this._window.findChildByTag("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_379,this.onHover);
         Util.setProcDirectly(this.var_269,this.onHover);
         this.var_1001.width = this.var_1001.textWidth;
         Util.moveChildrenToRow(this.var_1959,["owner_caption","owner_name"],this.var_1001.x,this.var_1001.y,3);
         this.var_819.width = this.var_819.textWidth;
         Util.moveChildrenToRow(this.var_1957,["rating_caption","rating_txt"],this.var_819.x,this.var_819.y,3);
         this.var_1257.height = this.var_1257.textHeight + 5;
         Util.moveChildrenToColumn(this.var_821,["embed_info_txt","embed_src_txt"],this.var_1257.y,2);
         this.var_821.height = Util.getLowestPoint(this.var_821) + 5;
         this.var_2955 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.method_4(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1003.setSelection(0,this.var_1003.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.ZOOM_TOGGLE));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_381.reset();
      }
      
      private function method_4(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_146 != null)
         {
            this.var_146.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
