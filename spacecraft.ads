package Spacecraft is

   type Satellite is private;

   procedure initialize(This : out Satellite; Altitude : in Float; Time : Float; Orbits : Float; Distance : Float; Velocity : Float);

   function minToHr(This : Float) return Float;
   function feetToMile(This : Float) return Float;
   function kmToMile(This : Float) return Float;
   procedure computeDistanceAndVelocity (This : out Satellite);
   procedure displayData (This : out Satellite);

   private

   type Satellite is
      record
         Altitude : Float;
         Time : Float;
         Orbits : Float;
         Distance : Float;
         Velocity : Float;
      end record;

end Spacecraft;
