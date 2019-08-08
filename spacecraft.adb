with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Numerics; use Ada.Numerics;

package body Spacecraft is

   function minToHr(This : Float) return Float is
   begin
      return This / 60.0;
   end minToHr;

   function feetToMile(This : Float) return Float is
   begin
      return This / 5_280.0;
   end feetToMile;

   function kmToMile(This : Float) return Float is
   begin
      return This * 0.62137;
   end kmToMile;

   procedure computeDistanceAndVelocity (This : out Satellite) is
   begin
      This.Distance := This.Orbits * 2.0 * Pi * This.Altitude;
      This.Velocity := This.Distance / This.Time;
   end computeDistanceAndVelocity;

   procedure displayData (This : out Satellite) is
   begin
      Put_Line("Country travel distance/avg velocity ...");
      Put_Line(Float'Image(This.Distance) & " / " & Float'Image(This.Velocity));
      new_line;
   end displayData;

   procedure initialize(This : out Satellite; Altitude : Float; Time : Float; Orbits : Float; Distance : Float; Velocity : Float) is
   begin
      This.Altitude := Altitude;
      This.Time := Time;
      This.Orbits := Orbits;
      This.Distance := Distance;
      This.Velocity := Velocity;
   end initialize;



end Spacecraft;
