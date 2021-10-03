package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1663:String = "pricing_model_unknown";
      
      public static const const_407:String = "pricing_model_single";
      
      public static const const_427:String = "pricing_model_multi";
      
      public static const const_535:String = "pricing_model_bundle";
      
      public static const const_1759:String = "price_type_none";
      
      public static const const_955:String = "price_type_credits";
      
      public static const const_1144:String = "price_type_activitypoints";
      
      public static const const_1323:String = "price_type_credits_and_activitypoints";
       
      
      private var var_749:String;
      
      private var var_1156:String;
      
      private var var_1694:int;
      
      private var var_1757:String;
      
      private var var_1155:int;
      
      private var var_1157:int;
      
      private var var_1758:int;
      
      private var include:ICatalogPage;
      
      private var var_607:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2402:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this.var_1694 = param1;
         this.var_1757 = param2;
         this.var_1155 = param3;
         this.var_1157 = param4;
         this.var_1758 = param5;
         this.include = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.include;
      }
      
      public function get offerId() : int
      {
         return this.var_1694;
      }
      
      public function get localizationId() : String
      {
         return this.var_1757;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1155;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1157;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1758;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_607;
      }
      
      public function get pricingModel() : String
      {
         return this.var_749;
      }
      
      public function get priceType() : String
      {
         return this.var_1156;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2402;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2402 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1694 = 0;
         this.var_1757 = "";
         this.var_1155 = 0;
         this.var_1157 = 0;
         this.var_1758 = 0;
         this.include = null;
         if(this.var_607 != null)
         {
            this.var_607.dispose();
            this.var_607 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_749)
         {
            case const_407:
               this.var_607 = new SingleProductContainer(this,param1);
               break;
            case const_427:
               this.var_607 = new MultiProductContainer(this,param1);
               break;
            case const_535:
               this.var_607 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_749);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_749 = const_407;
            }
            else
            {
               this.var_749 = const_427;
            }
         }
         else if(param1.length > 1)
         {
            this.var_749 = const_535;
         }
         else
         {
            this.var_749 = const_1663;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1155 > 0 && this.var_1157 > 0)
         {
            this.var_1156 = const_1323;
         }
         else if(this.var_1155 > 0)
         {
            this.var_1156 = const_955;
         }
         else if(this.var_1157 > 0)
         {
            this.var_1156 = const_1144;
         }
         else
         {
            this.var_1156 = const_1759;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.include.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_607.products)
         {
            _loc4_ = this.include.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
