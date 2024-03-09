with Ada.Text_IO, Ada.Integer_Text_IO, Storage, Consumer, Producer;
use Ada.Text_IO, Ada.Integer_Text_IO, Storage, Consumer, Producer;
with Ada.Containers.Indefinite_Doubly_Linked_Lists;
use Ada.Containers;


procedure Main is
   amountOfConsumer: Integer;
   amountOfProduser: Integer;
   storageSize: Integer := 3;
begin

   Put_Line("Write amount of produser: ");
   Get(amountOfProduser);
   Put_Line("Write amount of consumer: ");
   Get(amountOfConsumer);

   declare
      listOfConsumer: array(1..amountOfConsumer) of Consumer_Task;
      listOfProduser: array(1..amountOfProduser) of Producer_Task;
   begin
      initStorage(storageSize);
      for i in 1 .. amountOfProduser loop
         listOfProduser(i).Start(i);
      end loop;
      for i in 1 .. amountOfConsumer loop
         listOfConsumer(i).Start(i);
      end loop;
   end;


end Main;
