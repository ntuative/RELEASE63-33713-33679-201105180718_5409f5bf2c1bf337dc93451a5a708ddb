package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_199;
         param1["bound_to_parent_rect"] = const_99;
         param1["child_window"] = const_1329;
         param1["embedded_controller"] = const_1162;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_783;
         param1["mouse_dragging_target"] = const_253;
         param1["mouse_dragging_trigger"] = const_420;
         param1["mouse_scaling_target"] = const_328;
         param1["mouse_scaling_trigger"] = const_477;
         param1["horizontal_mouse_scaling_trigger"] = const_287;
         param1["vertical_mouse_scaling_trigger"] = const_237;
         param1["observe_parent_input_events"] = const_1296;
         param1["optimize_region_to_layout_size"] = const_614;
         param1["parent_window"] = const_1246;
         param1["relative_horizontal_scale_center"] = const_197;
         param1["relative_horizontal_scale_fixed"] = const_156;
         param1["relative_horizontal_scale_move"] = const_370;
         param1["relative_horizontal_scale_strech"] = const_369;
         param1["relative_scale_center"] = const_1277;
         param1["relative_scale_fixed"] = const_699;
         param1["relative_scale_move"] = const_1313;
         param1["relative_scale_strech"] = const_1198;
         param1["relative_vertical_scale_center"] = const_213;
         param1["relative_vertical_scale_fixed"] = const_140;
         param1["relative_vertical_scale_move"] = const_236;
         param1["relative_vertical_scale_strech"] = const_340;
         param1["on_resize_align_left"] = const_806;
         param1["on_resize_align_right"] = const_494;
         param1["on_resize_align_center"] = const_543;
         param1["on_resize_align_top"] = const_697;
         param1["on_resize_align_bottom"] = const_478;
         param1["on_resize_align_middle"] = const_604;
         param1["on_accommodate_align_left"] = const_1242;
         param1["on_accommodate_align_right"] = const_557;
         param1["on_accommodate_align_center"] = const_807;
         param1["on_accommodate_align_top"] = const_1327;
         param1["on_accommodate_align_bottom"] = const_512;
         param1["on_accommodate_align_middle"] = const_961;
         param1["route_input_events_to_parent"] = const_511;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1131;
         param1["scalable_with_mouse"] = const_1270;
         param1["reflect_horizontal_resize_to_parent"] = const_469;
         param1["reflect_vertical_resize_to_parent"] = const_516;
         param1["reflect_resize_to_parent"] = const_344;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1110;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
