with ProtectedGoods, Storage, Ada.Text_IO;
use ProtectedGoods, Storage, Ada.Text_IO;
package Consumer is

   task type Consumer_Task is
      entry Start(id: Integer);
   end Consumer_Task;

end Consumer;
