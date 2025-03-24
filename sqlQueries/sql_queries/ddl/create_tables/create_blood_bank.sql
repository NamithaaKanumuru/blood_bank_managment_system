-- Create BLOOD_BANK Table
CREATE TABLE BLOOD_BANK (
    blood_bank_id     NUMBER PRIMARY KEY,
    location_id       NUMBER NOT NULL,
    capacity          NUMBER NOT NULL,
    blood_bank_name   VARCHAR2(100) NOT NULL,
 
    -- Foreign Key
    CONSTRAINT blood_bank_location_fk 
        FOREIGN KEY (location_id) 
        REFERENCES location(location_id)
);