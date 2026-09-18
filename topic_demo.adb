pragma Ada_2022;
with Ada.Numerics.Generic_Complex_Types;
with Ada.Text_IO;
with Ada.Text_IO.Complex_IO;
package body Topic_Demo is
   function Available return Boolean is
      package Complex_Types is new Ada.Numerics.Generic_Complex_Types (Float);
      package Complex_IO is new Ada.Text_IO.Complex_IO (Complex_Types);
      C : constant Complex_Types.Complex :=
        Complex_Types.Compose_From_Cartesian (1.0, 2.0);
   begin
      return Complex_Types.Re (C) = 1.0
        and then Complex_IO.Default_Fore = 2;
   end Available;
end Topic_Demo;
