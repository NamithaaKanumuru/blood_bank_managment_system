begin
   begin
      insert into blood_request (
         request_id,
         hospital_id,
         hospital_patient_id,
         blood_type_id,
         quantity_requested,
         request_date,
         status
      ) values ( 1,
                 201,
                 501,
                 1,
                 500,
                 to_date('2023-12-01','YYYY-MM-DD'),
                 'Pending' );
   exception
      when dup_val_on_index then
         null;
   end;

   begin
      insert into blood_request (
         request_id,
         hospital_id,
         hospital_patient_id,
         blood_type_id,
         quantity_requested,
         request_date,
         status
      ) values ( 2,
                 202,
                 502,
                 5,
                 1000,
                 to_date('2023-12-05','YYYY-MM-DD'),
                 'Approved' );
   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into blood_request values ( 6,
                                         206,
                                         506,
                                         1,
                                         500,
                                         to_date('2023-11-21','YYYY-MM-DD'),
                                         'Approved' );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into blood_request values ( 7,
                                         207,
                                         507,
                                         2,
                                         750,
                                         to_date('2024-01-03','YYYY-MM-DD'),
                                         'Pending' );

   exception
      when dup_val_on_index then
         null;
   end;
   begin
      insert into blood_request values ( 8,
                                         208,
                                         508,
                                         5,
                                         1000,
                                         to_date('2024-02-16','YYYY-MM-DD'),
                                         'Fulfilled' );

   exception
      when dup_val_on_index then
         null;
   end;
 
    -- Ensure consistent references between tables
end;
/