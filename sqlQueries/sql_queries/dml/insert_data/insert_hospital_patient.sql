-- Consistent Hospital Patient Insertions
BEGIN
    BEGIN
        INSERT INTO HOSPITAL_PATIENT (
            HOSPITAL_PATIENT_ID, HOSPITAL_ID, USER_ID, ADMISSION_DATE, DISCHARGE_DATE
        ) VALUES (
            501, 201, 1001, TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2023-11-10', 'YYYY-MM-DD')
        );
    EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
 
    BEGIN
        INSERT INTO HOSPITAL_PATIENT (
            HOSPITAL_PATIENT_ID, HOSPITAL_ID, USER_ID, ADMISSION_DATE, DISCHARGE_DATE
        ) VALUES (
            502, 202, 1002, TO_DATE('2023-12-05', 'YYYY-MM-DD'), TO_DATE('2023-12-12', 'YYYY-MM-DD')
        );
    EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO HOSPITAL_PATIENT VALUES (506, 206, 1016, TO_DATE('2023-11-20', 'YYYY-MM-DD'), TO_DATE('2023-11-25', 'YYYY-MM-DD')); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO HOSPITAL_PATIENT VALUES (507, 207, 1017, TO_DATE('2024-01-02', 'YYYY-MM-DD'), TO_DATE('2024-01-10', 'YYYY-MM-DD')); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO HOSPITAL_PATIENT VALUES (508, 208, 1018, TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2024-02-20', 'YYYY-MM-DD')); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
 
    -- Ensure consistent user and hospital references
END;
/