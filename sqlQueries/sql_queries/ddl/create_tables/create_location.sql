-- Create LOCATION Table
CREATE TABLE LOCATION (
    location_id NUMBER PRIMARY KEY,
    address     VARCHAR2(100) NOT NULL,
    city        VARCHAR2(50) NOT NULL,
    state       VARCHAR2(50) NOT NULL,
    pincode     VARCHAR2(10) NOT NULL,
    latitude    FLOAT,
    longitude   FLOAT
);