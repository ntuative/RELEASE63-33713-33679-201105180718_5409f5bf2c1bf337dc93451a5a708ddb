package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_913:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1244:String = "inventory_effects";
      
      public static const const_1168:String = "inventory_badges";
      
      public static const const_1744:String = "inventory_clothes";
      
      public static const const_1745:String = "inventory_furniture";
       
      
      private var var_2791:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_913);
         this.var_2791 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2791;
      }
   }
}
