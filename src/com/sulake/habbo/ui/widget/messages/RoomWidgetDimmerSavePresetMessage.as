package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_702:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2238:int;
      
      private var var_2237:int;
      
      private var _color:uint;
      
      private var var_1274:int;
      
      private var var_2239:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_702);
         this.var_2238 = param1;
         this.var_2237 = param2;
         this._color = param3;
         this.var_1274 = param4;
         this.var_2239 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2238;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2237;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1274;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2239;
      }
   }
}
