package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_857:int = 500;
      
      private static var var_681:Vector3d = new Vector3d();
       
      
      private var var_468:Vector3d;
      
      private var var_96:Vector3d;
      
      private var var_1050:Number = 0.0;
      
      private var var_2034:int = 0;
      
      private var var_2845:int;
      
      private var var_1051:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_468 = new Vector3d();
         this.var_96 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this.var_2034;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_96 = null;
         this.var_468 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null)
         {
            this.var_96.assign(param1.getLocation());
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_1051 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         if(param1.loc != null)
         {
            this.var_96.assign(param1.loc);
         }
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               _loc3_ = _loc2_.targetLoc;
               this.var_2845 = this.var_2034;
               this.var_468.assign(_loc3_);
               this.var_468.sub(this.var_96);
            }
         }
      }
      
      protected function getLocationOffset() : IVector3d
      {
         return null;
      }
      
      override public function update(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IVector3d = this.getLocationOffset();
         var _loc3_:IRoomObjectModelController = object.getModelController();
         if(_loc3_ != null)
         {
            if(_loc2_ != null)
            {
               if(this.var_1050 != _loc2_.z)
               {
                  this.var_1050 = _loc2_.z;
                  _loc3_.setNumber(RoomObjectVariableEnum.const_780,this.var_1050);
               }
            }
            else if(this.var_1050 != 0)
            {
               this.var_1050 = 0;
               _loc3_.setNumber(RoomObjectVariableEnum.const_780,this.var_1050);
            }
         }
         if(this.var_468.length > 0 || _loc2_ != null)
         {
            _loc4_ = param1 - this.var_2845;
            if(_loc4_ == this.var_1051 >> 1)
            {
               _loc4_++;
            }
            if(_loc4_ > this.var_1051)
            {
               _loc4_ = this.var_1051;
            }
            if(this.var_468.length > 0)
            {
               var_681.assign(this.var_468);
               var_681.mul(_loc4_ / Number(this.var_1051));
               var_681.add(this.var_96);
            }
            else
            {
               var_681.assign(this.var_96);
            }
            if(_loc2_ != null)
            {
               var_681.add(_loc2_);
            }
            if(object != null)
            {
               object.setLocation(var_681);
            }
            if(_loc4_ == this.var_1051)
            {
               this.var_468.x = 0;
               this.var_468.y = 0;
               this.var_468.z = 0;
            }
         }
         this.var_2034 = param1;
      }
   }
}
