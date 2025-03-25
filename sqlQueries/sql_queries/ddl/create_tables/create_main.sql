BEGIN
   FOR t IN (
      SELECT table_name FROM (
         SELECT 'BLOOD_REQUEST' AS table_name FROM DUAL UNION ALL
         SELECT 'DONATION' FROM DUAL UNION ALL
         SELECT 'HOSPITAL_PATIENT' FROM DUAL UNION ALL
         SELECT 'BBMS_USER' FROM DUAL UNION ALL
         SELECT 'BLOOD_BANK' FROM DUAL UNION ALL
         SELECT 'HOSPITAL' FROM DUAL UNION ALL
         SELECT 'BLOOD_TYPE' FROM DUAL UNION ALL
         SELECT 'PERSON_TYPE' FROM DUAL UNION ALL
         SELECT 'LOCATION' FROM DUAL
      )
   ) LOOP
      BEGIN
         EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
         DBMS_OUTPUT.PUT_LINE('Dropped table: ' || t.table_name);
      EXCEPTION
         WHEN OTHERS THEN
            IF SQLCODE = -942 THEN -- ORA-00942: table or view does not exist
               DBMS_OUTPUT.PUT_LINE('Table does not exist: ' || t.table_name);
            ELSE
               DBMS_OUTPUT.PUT_LINE('Error dropping table ' || t.table_name || ': ' || SQLERRM);
            END IF;
      END;
   END LOOP;
END;
/


@create_location.sql
@create_person_type.sql
@create_blood_type.sql
@create_hospital.sql
@create_blood_bank.sql
@create_bbms_user.sql
@create_hospital_patient.sql
@create_blood_request.sql
@create_donation.sql