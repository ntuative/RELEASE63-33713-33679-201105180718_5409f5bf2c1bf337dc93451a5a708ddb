package com.sulake.habbo.sound.trax
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.sound.IHabboSound;
   import com.sulake.habbo.sound.events.SoundCompleteEvent;
   import flash.events.IEventDispatcher;
   import flash.events.SampleDataEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TraxSequencer implements IHabboSound, IDisposable
   {
      
      private static const const_113:Number = 44100;
      
      private static const const_186:uint = 8192;
      
      private static const const_1481:uint = 88000;
      
      private static const const_1482:uint = 88000;
      
      private static const const_299:Vector.<int> = new Vector.<int>(const_186,true);
       
      
      private var _disposed:Boolean = false;
      
      private var _events:IEventDispatcher;
      
      private var var_930:Number;
      
      private var var_978:Sound;
      
      private var var_446:SoundChannel;
      
      private var var_1239:TraxData;
      
      private var var_1920:Map;
      
      private var var_1086:Boolean;
      
      private var var_1894:int;
      
      private var var_1508:int = 0;
      
      private var var_211:uint;
      
      private var var_444:Array;
      
      private var var_1921:Boolean;
      
      private var var_655:Boolean = true;
      
      private var var_369:uint;
      
      private var var_1507:uint;
      
      private var var_979:Boolean;
      
      private var var_805:Boolean;
      
      private var var_806:int;
      
      private var var_445:int;
      
      private var var_977:int;
      
      private var var_538:int;
      
      private var var_656:Timer;
      
      private var var_447:Timer;
      
      private var var_1240:int = 0;
      
      private var var_1919:int = 0;
      
      public function TraxSequencer(param1:int, param2:TraxData, param3:Map, param4:IEventDispatcher)
      {
         this.var_1507 = uint(30);
         super();
         this._events = param4;
         this.var_1894 = param1;
         this.var_930 = 1;
         this.var_978 = new Sound();
         this.var_446 = null;
         this.var_1920 = param3;
         this.var_1239 = param2;
         this.var_1086 = true;
         this.var_211 = 0;
         this.var_444 = [];
         this.var_1921 = false;
         this.var_369 = 0;
         this.var_655 = false;
         this.var_979 = false;
         this.var_805 = false;
         this.var_806 = 0;
         this.var_445 = 0;
         this.var_977 = 0;
         this.var_538 = 0;
      }
      
      public function set position(param1:Number) : void
      {
         this.var_211 = uint(param1 * const_113);
      }
      
      public function get volume() : Number
      {
         return this.var_930;
      }
      
      public function get position() : Number
      {
         return this.var_211 / const_113;
      }
      
      public function get ready() : Boolean
      {
         return this.var_1086;
      }
      
      public function set ready(param1:Boolean) : void
      {
         this.var_1086 = param1;
      }
      
      public function get finished() : Boolean
      {
         return this.var_655;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_445 / const_113;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
         this.var_445 = int(param1 * const_113);
      }
      
      public function get method_3() : Number
      {
         return this.var_806 / const_113;
      }
      
      public function set method_3(param1:Number) : void
      {
         this.var_806 = int(param1 * const_113);
      }
      
      public function get traxData() : TraxData
      {
         return this.var_1239;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_930 = param1;
         if(this.var_446 != null)
         {
            this.var_446.soundTransform = new SoundTransform(this.var_930);
         }
      }
      
      public function get length() : Number
      {
         return this.var_369 / const_113;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.stopImmediately();
            this.var_1239 = null;
            this.var_1920 = null;
            this.var_444 = null;
            this._events = null;
            this.var_978 = null;
            this._disposed = true;
         }
      }
      
      public function prepare() : Boolean
      {
         if(!this.var_1086)
         {
            Logger.log("Cannot start trax playback until samples ready!");
            return false;
         }
         if(!this.var_1921)
         {
            if(!this.prepareSequence())
            {
               Logger.log("Cannot start playback, prepare sequence failed!");
               return false;
            }
         }
         return true;
      }
      
      private function prepareSequence() : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         if(this.var_444 == null)
         {
            return false;
         }
         var _loc1_:uint = getTimer();
         var _loc2_:int = 0;
         while(_loc2_ < this.var_1239.channels.length)
         {
            _loc3_ = new Map();
            _loc4_ = this.var_1239.channels[_loc2_] as TraxChannel;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < _loc4_.itemCount)
            {
               _loc8_ = _loc4_.getItem(_loc7_).id;
               _loc9_ = this.var_1920.getValue(_loc8_) as TraxSample;
               _loc9_.setUsageFromSong(this.var_1894,_loc1_);
               if(_loc9_ == null)
               {
                  Logger.log("Error in prepareSequence(), sample was null!");
               }
               continue;
               _loc10_ = this.getSampleBars(_loc9_.length);
               _loc11_ = _loc4_.getItem(_loc7_).length / _loc10_;
               _loc12_ = 0;
               while(_loc12_ < _loc11_)
               {
                  if(_loc8_ != 0)
                  {
                     _loc3_.add(_loc5_,_loc9_);
                  }
                  _loc6_ += _loc10_;
                  _loc5_ = uint(_loc6_ * const_1482);
                  _loc12_++;
               }
               if(this.var_369 < _loc5_)
               {
                  this.var_369 = _loc5_;
               }
               _loc7_++;
               return false;
            }
            this.var_444.push(_loc3_);
            _loc2_++;
         }
         this.var_1921 = true;
         return true;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         this.removeFadeoutStopTimer();
         if(this.var_446 != null)
         {
            this.stopImmediately();
         }
         if(this.var_806 > 0)
         {
            this.var_979 = true;
            this.var_977 = 0;
         }
         this.var_805 = false;
         this.var_538 = 0;
         this.var_655 = false;
         this.var_978.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.var_1508 = param1 * const_113;
         this.var_1240 = 0;
         this.var_1919 = 0;
         this.var_446 = this.var_978.play();
         this.volume = this.var_930;
         return true;
      }
      
      public function render(param1:SampleDataEvent) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         while(!this.var_655)
         {
            this.onSampleData(param1);
         }
         return true;
      }
      
      public function stop() : Boolean
      {
         if(this.var_445 > 0 && !this.var_655)
         {
            this.stopWithFadeout();
         }
         else
         {
            this.playingComplete();
         }
         return true;
      }
      
      private function stopImmediately() : void
      {
         this.removeStopTimer();
         if(this.var_446 != null)
         {
            this.var_446.stop();
            this.var_446 = null;
         }
         if(this.var_978 != null)
         {
            this.var_978.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         }
      }
      
      private function stopWithFadeout() : void
      {
         if(this.var_656 == null)
         {
            this.var_805 = true;
            this.var_538 = 0;
            this.var_656 = new Timer(this.var_1507 + this.var_445 / (const_113 / 1000),1);
            this.var_656.start();
            this.var_656.addEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
         }
      }
      
      private function getSampleBars(param1:uint) : int
      {
         return Math.ceil(param1 / const_1481);
      }
      
      private function getChannelSequenceOffsets() : Array
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc1_:* = [];
         if(this.var_444 != null)
         {
            _loc2_ = this.var_444.length;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = this.var_444[_loc3_];
               _loc5_ = 0;
               while(_loc5_ < _loc4_.length && _loc4_.getKey(_loc5_) < this.var_211)
               {
                  _loc5_++;
               }
               _loc1_.push(_loc5_ - 1);
               _loc3_++;
            }
         }
         return _loc1_;
      }
      
      private function mixChannelsIntoBuffer() : void
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         if(this.var_444 == null)
         {
            return;
         }
         var _loc1_:Array = this.getChannelSequenceOffsets();
         var _loc2_:int = this.var_444.length;
         var _loc3_:* = null;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = this.var_444[_loc4_];
            _loc6_ = _loc1_[_loc4_];
            _loc7_ = _loc5_.getWithIndex(_loc6_);
            if(_loc7_ == null)
            {
               _loc3_ = null;
            }
            else
            {
               _loc10_ = _loc5_.getKey(_loc6_);
               _loc11_ = this.var_211 - _loc10_;
               if(_loc7_.id == 0 || _loc11_ < 0)
               {
                  _loc3_ = null;
               }
               else
               {
                  _loc3_ = new TraxChannelSample(_loc7_,_loc11_);
               }
            }
            _loc8_ = const_186;
            if(this.var_369 - this.var_211 < _loc8_)
            {
               _loc8_ = this.var_369 - this.var_211;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc12_ = _loc8_;
               if(_loc6_ < _loc5_.length - 1)
               {
                  _loc13_ = _loc5_.getKey(_loc6_ + 1);
                  if(_loc8_ + this.var_211 >= _loc13_)
                  {
                     _loc12_ = _loc13_ - this.var_211;
                  }
               }
               if(_loc12_ > _loc8_ - _loc9_)
               {
                  _loc12_ = _loc8_ - _loc9_;
               }
               if(_loc4_ == _loc2_ - 1)
               {
                  if(_loc3_ != null)
                  {
                     _loc3_.setSample(const_299,_loc9_,_loc12_);
                     _loc9_ += _loc12_;
                  }
                  else
                  {
                     _loc14_ = 0;
                     while(_loc14_ < _loc12_)
                     {
                        var _loc15_:*;
                        const_299[_loc15_ = _loc9_++] = 0;
                        _loc14_++;
                     }
                  }
               }
               else
               {
                  if(_loc3_ != null)
                  {
                     _loc3_.addSample(const_299,_loc9_,_loc12_);
                  }
                  _loc9_ += _loc12_;
               }
               if(_loc9_ < _loc8_)
               {
                  _loc7_ = _loc5_.getWithIndex(++_loc6_);
                  if(_loc7_ == null || _loc7_.id == 0)
                  {
                     _loc3_ = null;
                  }
                  else
                  {
                     _loc3_ = new TraxChannelSample(_loc7_,0);
                  }
               }
            }
            _loc4_--;
         }
      }
      
      private function checkSongFinishing() : void
      {
         var _loc1_:int = this.var_369 < this.var_1508 ? int(this.var_369) : (this.var_1508 > 0 ? int(this.var_1508) : int(this.var_369));
         if(this.var_211 > _loc1_ + this.var_1507 * (const_113 / 1000) && !this.var_655)
         {
            this.var_655 = true;
            if(this.var_447 != null)
            {
               this.var_447.reset();
               this.var_447.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
            }
            this.var_447 = new Timer(2,1);
            this.var_447.start();
            this.var_447.addEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
         }
         else if(this.var_211 > _loc1_ - this.var_445 && !this.var_805)
         {
            this.var_979 = false;
            this.var_805 = true;
            this.var_538 = 0;
         }
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         if(param1.position > this.var_1240)
         {
            ++this.var_1919;
            Logger.log("Audio buffer under run...");
            this.var_1240 = param1.position;
         }
         if(this.volume > 0)
         {
            this.mixChannelsIntoBuffer();
         }
         var _loc2_:int = const_186;
         if(this.var_369 - this.var_211 < _loc2_)
         {
            _loc2_ = this.var_369 - this.var_211;
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
         }
         if(this.volume <= 0)
         {
            _loc2_ = 0;
         }
         this.writeAudioToOutputStream(param1.data,_loc2_);
         this.var_211 += const_186;
         this.var_1240 += const_186;
         if(this.var_446 != null)
         {
            this.var_1507 = param1.position / const_113 * 1000 - this.var_446.position;
         }
         this.checkSongFinishing();
      }
      
      private function writeAudioToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param2 > 0)
         {
            if(!this.var_979 && !this.var_805)
            {
               this.writeMixingBufferToOutputStream(param1,param2);
            }
            else
            {
               if(this.var_979)
               {
                  _loc5_ = 1 / this.var_806;
                  _loc6_ = this.var_977 / Number(this.var_806);
                  this.var_977 += const_186;
                  if(this.var_977 > this.var_806)
                  {
                     this.var_979 = false;
                  }
               }
               else if(this.var_805)
               {
                  _loc5_ = -1 / this.var_445;
                  _loc6_ = 1 - this.var_538 / Number(this.var_445);
                  this.var_538 += const_186;
                  if(this.var_538 > this.var_445)
                  {
                     this.var_538 = this.var_445;
                  }
               }
               this.writeMixingBufferToOutputStreamWithFade(param1,param2,_loc6_,_loc5_);
            }
         }
         var _loc4_:int = param2;
         while(_loc4_ < const_186)
         {
            param1.writeFloat(0);
            param1.writeFloat(0);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = Number(Number(const_299[_loc4_]) * 0);
            param1.writeFloat(_loc3_);
            param1.writeFloat(_loc3_);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStreamWithFade(param1:ByteArray, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < param2)
         {
            if(param3 < 0 || param3 > 1)
            {
               break;
            }
            _loc5_ = Number(Number(const_299[_loc6_]) * 0 * param3);
            param3 += param4;
            param1.writeFloat(_loc5_);
            param1.writeFloat(_loc5_);
            _loc6_++;
         }
         if(param3 < 0)
         {
            while(_loc6_ < param2)
            {
               param1.writeFloat(0);
               param1.writeFloat(0);
               _loc6_++;
            }
         }
         else if(param3 > 1)
         {
            while(_loc6_ < param2)
            {
               _loc5_ = Number(Number(const_299[_loc6_]) * 0);
               param3 += param4;
               param1.writeFloat(_loc5_);
               param1.writeFloat(_loc5_);
               _loc6_++;
            }
         }
      }
      
      private function onPlayingComplete(param1:TimerEvent) : void
      {
         if(this.var_655)
         {
            this.playingComplete();
         }
      }
      
      private function onFadeOutComplete(param1:TimerEvent) : void
      {
         this.removeFadeoutStopTimer();
         this.playingComplete();
      }
      
      private function playingComplete() : void
      {
         this.stopImmediately();
         this._events.dispatchEvent(new SoundCompleteEvent(SoundCompleteEvent.TRAX_SONG_COMPLETE,this.var_1894));
      }
      
      private function removeFadeoutStopTimer() : void
      {
         if(this.var_656 != null)
         {
            this.var_656.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
            this.var_656.reset();
            this.var_656 = null;
         }
      }
      
      private function removeStopTimer() : void
      {
         if(this.var_447 != null)
         {
            this.var_447.reset();
            this.var_447.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
            this.var_447 = null;
         }
      }
   }
}
