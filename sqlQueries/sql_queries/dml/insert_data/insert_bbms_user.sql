-- Consistent User Insertions with Synchronized Location, Blood Type
begin
   begin
      insert into bbms_user values ( 1001,
                                     101,
                                     3,
                                     null,
                                     'Rahul Sharma',
                                     'rahul.sharma@example.com',
                                     '9876543210',
                                     'Male',
                                     to_date('1990-05-20','YYYY-MM-DD'),
                                     1 );
   exception
      when dup_val_on_index then
         null;
   end;

   begin
      insert into bbms_user values ( 1002,
                                     102,
                                     3,
                                     null,
                                     'Anita Verma',
                                     'anita.verma@example.com',
                                     '9123456780',
                                     'Female',
                                     to_date('1985-08-12','YYYY-MM-DD'),
                                     2 );
   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into bbms_user values ( 1016,
                                     106,
                                     3,
                                     null,
                                     'Arjun Mehra',
                                     'arjun.mehra@example.com',
                                     '9988771122',
                                     'Male',
                                     to_date('1990-02-18','YYYY-MM-DD'),
                                     1 );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into bbms_user values ( 1017,
                                     107,
                                     3,
                                     null,
                                     'Meena Kaur',
                                     'meena.kaur@example.com',
                                     '9877123456',
                                     'Female',
                                     to_date('1988-06-23','YYYY-MM-DD'),
                                     2 );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into bbms_user values ( 1018,
                                     108,
                                     3,
                                     null,
                                     'Tarun Gill',
                                     'tarun.gill@example.com',
                                     '9776543210',
                                     'Male',
                                     to_date('1992-01-30','YYYY-MM-DD'),
                                     3 );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into bbms_user values ( 1019,
                                     109,
                                     3,
                                     null,
                                     'Neha Dsouza',
                                     'neha.dsouza@example.com',
                                     '9345678901',
                                     'Female',
                                     to_date('1993-12-12','YYYY-MM-DD'),
                                     4 );

   exception
      when dup_val_on_index then
         null;
   end;
 
    -- Similar pattern for other users, ensuring consistent IDs and references
end;
/