BEGIN
    -- Ensure location IDs are sequential and unique
    BEGIN INSERT INTO LOCATION VALUES (101, '12 MG Road', 'Mumbai', 'Maharashtra', '400001', 18.9388, 72.8355); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO LOCATION VALUES (102, '221B Baker Street', 'Delhi', 'Delhi', '110001', 28.6448, 77.2167); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO LOCATION VALUES (103, '1 Residency Road', 'Bangalore', 'Karnataka', '560025', 12.9716, 77.5946); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO LOCATION VALUES (104, '56 Nehru Nagar', 'Chennai', 'Tamil Nadu', '600001', 13.0827, 80.2707); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO LOCATION VALUES (105, '17 JP Road', 'Pune', 'Maharashtra', '411001', 18.5204, 73.8567); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO LOCATION VALUES (106, '15 Lake View Rd', 'Chandigarh', 'Chandigarh', '160017', 30.7333, 76.7794); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO LOCATION VALUES (107, '7 MG Cross', 'Thane', 'Maharashtra', '400601', 19.2183, 72.9781); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO LOCATION VALUES (108, 'Block A, IT Park', 'Indore', 'Madhya Pradesh', '452001', 22.7196, 75.8577); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO LOCATION VALUES (109, 'NH5 Ring Rd', 'Vishakhapatnam', 'Andhra Pradesh', '530001', 17.6868, 83.2185); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
    BEGIN INSERT INTO LOCATION VALUES (110, '33 Residency Plaza', 'Surat', 'Gujarat', '395003', 21.1702, 72.8311); EXCEPTION WHEN DUP_VAL_ON_INDEX THEN NULL; END;
END;
/