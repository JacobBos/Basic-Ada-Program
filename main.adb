with Spacecraft; use Spacecraft;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics; use Ada.Numerics;

procedure Main is

   type nation is (USA, RSA);
   flyingObject : array(nation) of Satellite;

begin
   initialize(flyingObject(USA), feetToMile (22_256_384.2), minToHr (36_320.2), 10.0, 0.0, 0.0);
   initialize(flyingObject(RSA), kmToMile (12_147.7), 680.2, 11.0, 0.0, 0.0);

   computeDistanceAndVelocity(flyingObject(USA));
   computeDistanceAndVelocity(flyingObject(RSA));

   displayData(flyingObject(USA));
   displayData(flyingObject(RSA));

end Main;
