

package body Producer is
   task body Producer_Task is
      id: Integer;
   begin
      accept Start(id: Integer) do
         Producer_Task.id := id;
      end Start;
      while (getAndDecreaseProducedGood > 0) loop
         addItem(id'Img);
         Put_Line("Producer " & id'img & " add new item");
      end loop;
   end Producer_Task;

end Producer;
