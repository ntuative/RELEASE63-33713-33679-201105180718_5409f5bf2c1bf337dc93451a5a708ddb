package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1811:int;
      
      private var var_1173:int;
      
      private var var_2217:int;
      
      private var var_2219:int;
      
      private var var_2220:int;
      
      private var _energy:int;
      
      private var var_2221:int;
      
      private var _nutrition:int;
      
      private var var_2218:int;
      
      private var var_2222:int;
      
      private var _ownerName:String;
      
      private var var_2339:int;
      
      private var var_524:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1811;
      }
      
      public function get level() : int
      {
         return this.var_1173;
      }
      
      public function get levelMax() : int
      {
         return this.var_2217;
      }
      
      public function get experience() : int
      {
         return this.var_2219;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2220;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2221;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2218;
      }
      
      public function get ownerId() : int
      {
         return this.var_2222;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2339;
      }
      
      public function get age() : int
      {
         return this.var_524;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1811 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1173 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2217 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2219 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2220 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2221 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2218 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2222 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2339 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_524 = param1;
      }
   }
}
