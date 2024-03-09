with Ada.Containers.Indefinite_Doubly_Linked_Lists, GNAT.Semaphores, Ada.Text_IO;
use Ada.Containers, GNAT.Semaphores, Ada.Text_IO;

package Storage is

   package StorageList is new Indefinite_Doubly_Linked_Lists (String);
   use StorageList;

   procedure addItem(item: String);
   procedure getItem(item: out String);
   
   procedure initStorage(storageSize: in Integer);
private
   storageLst: List;
   size: Integer;
   fullStorage: Counting_Semaphore(0,Default_Ceiling);
   emptyStorage: Counting_Semaphore(0,Default_Ceiling);
   accessStorage: Counting_Semaphore(1,Default_Ceiling);
end Storage;
