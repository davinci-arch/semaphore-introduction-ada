

package body Producer is
   task body Producer_Task is
      id: Integer;
      val: Integer := 1;
   begin
      accept Start(id: Integer) do
         Producer_Task.id := id;
      end Start;
      loop
         exit when Goods.isProductionDone;
         Goods.decrementProducedGood;
         addItem(id'Img);
         Put_Line("Producer " & id'img & " add new item");

      end loop;
   end Producer_Task;

end Producer;
