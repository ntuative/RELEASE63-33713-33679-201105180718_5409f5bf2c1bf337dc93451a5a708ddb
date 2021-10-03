package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2559:String;
      
      private var var_2558:Class;
      
      private var var_2560:Class;
      
      private var var_1840:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2559 = param1;
         this.var_2558 = param2;
         this.var_2560 = param3;
         if(rest == null)
         {
            this.var_1840 = new Array();
         }
         else
         {
            this.var_1840 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2559;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2558;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2560;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1840;
      }
   }
}
