with Ada.Text_IO; use Ada.Text_IO;
with Ada.Exceptions;  use Ada.Exceptions;
with Exceptions; use Exceptions;

procedure Main is
begin
   --  Block (sequence of statements)
   begin
       raise My_Except with "My exception message";
   exception
      when E : My_Except =>
          Put_Line("Exception handled.");
   end;
end Main;
