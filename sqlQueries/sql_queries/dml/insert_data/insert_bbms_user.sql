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

   BEGIN
   BEGIN
      INSERT INTO bbms_user VALUES (
         2001,                -- user_id
         110,                 -- location_id
         2,                   -- person_type_id (Patient)
         201,                 -- hospital_id
         'Ramesh Gupta',      -- name
         'ramesh.gupta@example.com', -- email
         '9001122334',        -- phone
         'Male',              -- gender
         TO_DATE('1982-07-15','YYYY-MM-DD'), -- dob
         1                    -- blood_type_id
      );
   EXCEPTION WHEN dup_val_on_index THEN NULL; END;

   BEGIN
      INSERT INTO bbms_user VALUES (
         2002, 101, 2, 202,
         'Sneha Reddy',
         'sneha.reddy@example.com',
         '9877765432',
         'Female',
         TO_DATE('1990-04-10','YYYY-MM-DD'),
         2
      );
   EXCEPTION WHEN dup_val_on_index THEN NULL; END;

   BEGIN
      INSERT INTO bbms_user VALUES (
         2003, 102, 2, 203,
         'Vikram Shetty',
         'vikram.shetty@example.com',
         '9123459900',
         'Male',
         TO_DATE('1975-01-28','YYYY-MM-DD'),
         3
      );
   EXCEPTION WHEN dup_val_on_index THEN NULL; END;

   BEGIN
      INSERT INTO bbms_user VALUES (
         2004, 103, 2, 204,
         'Fatima Khan',
         'fatima.khan@example.com',
         '9988772233',
         'Female',
         TO_DATE('1987-11-03','YYYY-MM-DD'),
         4
      );
   EXCEPTION WHEN dup_val_on_index THEN NULL; END;

   BEGIN
      INSERT INTO bbms_user VALUES (
         2005, 104, 2, 205,
         'Ajay Nair',
         'ajay.nair@example.com',
         '9112233445',
         'Male',
         TO_DATE('1993-06-25','YYYY-MM-DD'),
         5
      );
   EXCEPTION WHEN dup_val_on_index THEN NULL; END;
END;

   BEGIN INSERT INTO bbms_user VALUES (3010, 101, 3, NULL, 'Donor A', 'donor3010@example.com', '9003010010', 'Male', TO_DATE('1980-01-01','YYYY-MM-DD'), 1); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3011, 102, 3, NULL, 'Donor B', 'donor3011@example.com', '9003011011', 'Female', TO_DATE('1981-02-02','YYYY-MM-DD'), 2); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3012, 103, 3, NULL, 'Donor C', 'donor3012@example.com', '9003012012', 'Male', TO_DATE('1982-03-03','YYYY-MM-DD'), 3); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3013, 104, 3, NULL, 'Donor D', 'donor3013@example.com', '9003013013', 'Female', TO_DATE('1983-04-04','YYYY-MM-DD'), 4); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3014, 105, 3, NULL, 'Donor E', 'donor3014@example.com', '9003014014', 'Male', TO_DATE('1984-05-05','YYYY-MM-DD'), 5); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3015, 106, 3, NULL, 'Donor F', 'donor3015@example.com', '9003015015', 'Female', TO_DATE('1985-06-06','YYYY-MM-DD'), 6); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3016, 107, 3, NULL, 'Donor G', 'donor3016@example.com', '9003016016', 'Male', TO_DATE('1986-07-07','YYYY-MM-DD'), 7); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3017, 108, 3, NULL, 'Donor H', 'donor3017@example.com', '9003017017', 'Female', TO_DATE('1987-08-08','YYYY-MM-DD'), 8); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3018, 101, 3, NULL, 'Donor I', 'donor3018@example.com', '9003018018', 'Male', TO_DATE('1988-09-09','YYYY-MM-DD'), 2); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3019, 102, 3, NULL, 'Donor J', 'donor3019@example.com', '9003019019', 'Female', TO_DATE('1989-10-10','YYYY-MM-DD'), 3); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3020, 103, 3, NULL, 'Donor K', 'donor3020@example.com', '9003020020', 'Male', TO_DATE('1990-11-11','YYYY-MM-DD'), 4); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3021, 104, 3, NULL, 'Donor L', 'donor3021@example.com', '9003021021', 'Female', TO_DATE('1991-12-12','YYYY-MM-DD'), 5); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3022, 105, 3, NULL, 'Donor M', 'donor3022@example.com', '9003022022', 'Male', TO_DATE('1992-01-13','YYYY-MM-DD'), 6); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3023, 106, 3, NULL, 'Donor N', 'donor3023@example.com', '9003023023', 'Female', TO_DATE('1993-02-14','YYYY-MM-DD'), 7); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3024, 107, 3, NULL, 'Donor O', 'donor3024@example.com', '9003024024', 'Male', TO_DATE('1994-03-15','YYYY-MM-DD'), 8); EXCEPTION WHEN dup_val_on_index THEN NULL; END; 
   BEGIN INSERT INTO bbms_user VALUES (3025, 108, 3, NULL, 'Donor P', 'donor3025@example.com', '9003025025', 'Female', TO_DATE('1995-04-16','YYYY-MM-DD'), 1); EXCEPTION WHEN dup_val_on_index THEN NULL; END;

   
 
    -- Similar pattern for other users, ensuring consistent IDs and references
end;
/