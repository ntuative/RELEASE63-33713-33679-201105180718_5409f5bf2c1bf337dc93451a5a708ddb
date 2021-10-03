package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_708;
         param1["bitmap"] = const_801;
         param1["border"] = const_751;
         param1["border_notify"] = const_1842;
         param1["bubble"] = const_981;
         param1["bubble_pointer_up"] = const_1286;
         param1["bubble_pointer_right"] = const_1097;
         param1["bubble_pointer_down"] = const_1125;
         param1["bubble_pointer_left"] = const_1154;
         param1["button"] = const_626;
         param1["button_thick"] = const_818;
         param1["button_icon"] = const_1780;
         param1["button_group_left"] = const_860;
         param1["button_group_center"] = const_861;
         param1["button_group_right"] = const_684;
         param1["canvas"] = const_943;
         param1["checkbox"] = const_878;
         param1["closebutton"] = const_1262;
         param1["container"] = const_402;
         param1["container_button"] = const_951;
         param1["display_object_wrapper"] = const_722;
         param1["dropmenu"] = const_610;
         param1["dropmenu_item"] = const_551;
         param1["frame"] = const_399;
         param1["frame_notify"] = const_1692;
         param1["header"] = const_816;
         param1["html"] = const_1194;
         param1["icon"] = const_1180;
         param1["itemgrid"] = const_1225;
         param1["itemgrid_horizontal"] = const_596;
         param1["itemgrid_vertical"] = const_748;
         param1["itemlist"] = const_1184;
         param1["itemlist_horizontal"] = const_392;
         param1["itemlist_vertical"] = const_389;
         param1["label"] = const_875;
         param1["maximizebox"] = const_1719;
         param1["menu"] = const_1709;
         param1["menu_item"] = const_1849;
         param1["submenu"] = const_1129;
         param1["minimizebox"] = const_1806;
         param1["notify"] = const_1837;
         param1["null"] = const_805;
         param1["password"] = const_832;
         param1["radiobutton"] = const_814;
         param1["region"] = const_496;
         param1["restorebox"] = const_1885;
         param1["scaler"] = const_481;
         param1["scaler_horizontal"] = const_1657;
         param1["scaler_vertical"] = const_1852;
         param1["scrollbar_horizontal"] = const_584;
         param1["scrollbar_vertical"] = const_795;
         param1["scrollbar_slider_button_up"] = const_1254;
         param1["scrollbar_slider_button_down"] = const_1264;
         param1["scrollbar_slider_button_left"] = const_1120;
         param1["scrollbar_slider_button_right"] = const_1320;
         param1["scrollbar_slider_bar_horizontal"] = const_1258;
         param1["scrollbar_slider_bar_vertical"] = const_1303;
         param1["scrollbar_slider_track_horizontal"] = const_1278;
         param1["scrollbar_slider_track_vertical"] = const_1175;
         param1["scrollable_itemlist"] = const_1710;
         param1["scrollable_itemlist_vertical"] = WINDOW_TYPE_SCROLLABLE_ITEMLIST_VERTICAL;
         param1["scrollable_itemlist_horizontal"] = const_1157;
         param1["selector"] = const_971;
         param1["selector_list"] = const_934;
         param1["submenu"] = const_1129;
         param1["tab_button"] = const_810;
         param1["tab_container_button"] = const_1186;
         param1["tab_context"] = const_395;
         param1["tab_content"] = const_1207;
         param1["tab_selector"] = const_778;
         param1["text"] = const_696;
         param1["input"] = const_921;
         param1["toolbar"] = const_1812;
         param1["tooltip"] = const_410;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
