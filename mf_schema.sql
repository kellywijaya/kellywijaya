--student id: 32718179
--student name: Kelly Wijaya
-- Capture run of script in file called mf_schema_output.txt set echo on
SPOOL mf_schema_output.txt

-- Generated by Oracle SQL Developer Data Modeler 20.4.0.374.0801
--   at:        2021-10-30 22:06:58 GMT+07:00
--   site:      Oracle Database 12c
--   type:      Oracle Database 12c



DROP TABLE booking CASCADE CONSTRAINTS;

DROP TABLE chef CASCADE CONSTRAINTS;

DROP TABLE chef_assignment CASCADE CONSTRAINTS;

DROP TABLE cuisine_type CASCADE CONSTRAINTS;

DROP TABLE customer CASCADE CONSTRAINTS;

DROP TABLE decoration_theme CASCADE CONSTRAINTS;

DROP TABLE function_room CASCADE CONSTRAINTS;

DROP TABLE function_room_evaluation CASCADE CONSTRAINTS;

DROP TABLE room_unavailable CASCADE CONSTRAINTS;

DROP TABLE specialisation CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE booking (
    booking_id               INTEGER NOT NULL,
    booking_start_date_time  DATE NOT NULL,
    booking_end_date_time    DATE NOT NULL,
    number_guests            INTEGER NOT NULL,
    base_rate_per_guests     NUMBER(10, 2) NOT NULL,
    chef_quantity            INTEGER,
    total_costs              NUMBER(10, 2) NOT NULL,
    payment_date             DATE,
    decoration_id            INTEGER,
    cust_id                  INTEGER NOT NULL,
    cuisine_id               INTEGER,
    function_room_id         INTEGER
);

COMMENT ON COLUMN booking.booking_id IS
    'booking id		';

COMMENT ON COLUMN booking.booking_start_date_time IS
    'booking start date and time';

COMMENT ON COLUMN booking.booking_end_date_time IS
    'booking end date and time';

COMMENT ON COLUMN booking.number_guests IS
    'number of guests';

COMMENT ON COLUMN booking.base_rate_per_guests IS
    'base rate per guests';

COMMENT ON COLUMN booking.chef_quantity IS
    'quantity of chef needed';

COMMENT ON COLUMN booking.total_costs IS
    'total costs';

COMMENT ON COLUMN booking.payment_date IS
    'date of payment';

COMMENT ON COLUMN booking.cust_id IS
    'customer id';

COMMENT ON COLUMN booking.cuisine_id IS
    'cuisine identity number';

ALTER TABLE booking ADD CONSTRAINT booking_pk PRIMARY KEY ( booking_id );

ALTER TABLE booking ADD CONSTRAINT booking_cust_id_start_dt_un UNIQUE ( cust_id,
                                                                        booking_start_date_time );

CREATE TABLE chef (
    chef_id              INTEGER NOT NULL,
    chef_name            VARCHAR2(50) NOT NULL,
    chef_pay_rate        NUMBER(10, 2) NOT NULL,
    chef_contact_number  VARCHAR2(15)
);

COMMENT ON COLUMN chef.chef_id IS
    'chef identity';

COMMENT ON COLUMN chef.chef_name IS
    'name of chef';

COMMENT ON COLUMN chef.chef_pay_rate IS
    'chef pay rate';

COMMENT ON COLUMN chef.chef_contact_number IS
    'chef phone number';

ALTER TABLE chef ADD CONSTRAINT chef_pk PRIMARY KEY ( chef_id );

CREATE TABLE chef_assignment (
    booking_id  INTEGER NOT NULL,
    chef_id     INTEGER NOT NULL,
    head_chef   NUMBER
);

COMMENT ON COLUMN chef_assignment.booking_id IS
    'booking id		';

COMMENT ON COLUMN chef_assignment.chef_id IS
    'chef identity';

COMMENT ON COLUMN chef_assignment.head_chef IS
    'head chef';

ALTER TABLE chef_assignment ADD CONSTRAINT chef_assignment_pk PRIMARY KEY ( chef_id,
                                                                            booking_id );

CREATE TABLE cuisine_type (
    cuisine_id               INTEGER NOT NULL,
    cuisine_type             VARCHAR2(10) NOT NULL,
    cuisine_rate_per_guests  NUMBER(10, 2) NOT NULL
);

COMMENT ON COLUMN cuisine_type.cuisine_id IS
    'cuisine identity number';

COMMENT ON COLUMN cuisine_type.cuisine_type IS
    'type of cuisine';

COMMENT ON COLUMN cuisine_type.cuisine_rate_per_guests IS
    'cuisine rate per guests';

ALTER TABLE cuisine_type ADD CONSTRAINT cuisine_type_pk PRIMARY KEY ( cuisine_id );

CREATE TABLE customer (
    cust_id                 INTEGER NOT NULL,
    customer_business_name  VARCHAR2(50) NOT NULL,
    cust_name               VARCHAR2(50) NOT NULL,
    cust_number             VARCHAR2(15),
    cust_address            VARCHAR2(50)
);

COMMENT ON COLUMN customer.cust_id IS
    'customer id';

COMMENT ON COLUMN customer.customer_business_name IS
    'customer business name';

COMMENT ON COLUMN customer.cust_name IS
    'customer name';

COMMENT ON COLUMN customer.cust_number IS
    'customer phone number';

COMMENT ON COLUMN customer.cust_address IS
    'customer address';

ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( cust_id );

CREATE TABLE decoration_theme (
    decoration_id     INTEGER NOT NULL,
    decoration_theme  VARCHAR2(20) NOT NULL
);

ALTER TABLE decoration_theme ADD CONSTRAINT decoration_theme_pk PRIMARY KEY ( decoration_id );

CREATE TABLE function_room (
    function_room_id       INTEGER NOT NULL,
    function_room_name     VARCHAR2(15) NOT NULL,
    function_room_address  VARCHAR2(50) NOT NULL,
    kitchen_avaiability    NUMBER NOT NULL,
    guests_capacity        INTEGER NOT NULL,
    room_rate_per_hour     NUMBER(10, 2) NOT NULL
);

COMMENT ON COLUMN function_room.function_room_name IS
    'function room name';

COMMENT ON COLUMN function_room.function_room_address IS
    'function room address';

COMMENT ON COLUMN function_room.kitchen_avaiability IS
    'kitchen availability';

COMMENT ON COLUMN function_room.guests_capacity IS
    'guests capacity';

COMMENT ON COLUMN function_room.room_rate_per_hour IS
    'function room rate per hour';

ALTER TABLE function_room ADD CONSTRAINT function_room_pk PRIMARY KEY ( function_room_id );

CREATE TABLE function_room_evaluation (
    chef_id                      INTEGER NOT NULL,
    function_room_id             INTEGER NOT NULL,
    date_checked                 DATE NOT NULL,
    on_site_parking              NUMBER NOT NULL,
    aprroved_for_use             NUMBER NOT NULL,
    optional_comments            VARCHAR2(200),
    function_room_evaluation_id  NUMBER NOT NULL
);

COMMENT ON COLUMN function_room_evaluation.chef_id IS
    'chef identity';

COMMENT ON COLUMN function_room_evaluation.date_checked IS
    'checked in date';

COMMENT ON COLUMN function_room_evaluation.on_site_parking IS
    'onsite parking';

COMMENT ON COLUMN function_room_evaluation.aprroved_for_use IS
    'approved for use';

COMMENT ON COLUMN function_room_evaluation.optional_comments IS
    'optional comments';

ALTER TABLE function_room_evaluation ADD CONSTRAINT function_room_evaluation_pk PRIMARY KEY ( function_room_evaluation_id );

ALTER TABLE function_room_evaluation ADD CONSTRAINT fre_func_room_id_chef_id_un UNIQUE ( function_room_id,
                                                                                         chef_id );

CREATE TABLE room_unavailable (
    function_room_id        INTEGER NOT NULL,
    unavailable_start_date  DATE NOT NULL,
    unavailable_end_date    DATE NOT NULL
);

COMMENT ON COLUMN room_unavailable.unavailable_start_date IS
    'unavailable start  date time';

COMMENT ON COLUMN room_unavailable.unavailable_end_date IS
    'unavailable end date time';

ALTER TABLE room_unavailable ADD CONSTRAINT room_unavailable_pk PRIMARY KEY ( function_room_id,
                                                                              unavailable_start_date );

CREATE TABLE specialisation (
    chef_id               INTEGER NOT NULL,
    cuisine_id            INTEGER NOT NULL,
    years_of__experience  INTEGER
);

COMMENT ON COLUMN specialisation.chef_id IS
    'chef identity';

COMMENT ON COLUMN specialisation.cuisine_id IS
    'cuisine identity number';

COMMENT ON COLUMN specialisation.years_of__experience IS
    'chef''s cuisine specialisation years of exepreince';

ALTER TABLE specialisation ADD CONSTRAINT specialisation_pk PRIMARY KEY ( cuisine_id,
                                                                          chef_id );

ALTER TABLE booking
    ADD CONSTRAINT booking_cuisine_type_fk FOREIGN KEY ( cuisine_id )
        REFERENCES cuisine_type ( cuisine_id );

ALTER TABLE booking
    ADD CONSTRAINT booking_customer_fk FOREIGN KEY ( cust_id )
        REFERENCES customer ( cust_id );

ALTER TABLE booking
    ADD CONSTRAINT booking_decoration_theme_fk FOREIGN KEY ( decoration_id )
        REFERENCES decoration_theme ( decoration_id );

ALTER TABLE booking
    ADD CONSTRAINT booking_function_room_fk FOREIGN KEY ( function_room_id )
        REFERENCES function_room ( function_room_id );

ALTER TABLE chef_assignment
    ADD CONSTRAINT chef_assignment_booking_fk FOREIGN KEY ( booking_id )
        REFERENCES booking ( booking_id );

ALTER TABLE chef_assignment
    ADD CONSTRAINT chef_assignment_chef_fk FOREIGN KEY ( chef_id )
        REFERENCES chef ( chef_id );

ALTER TABLE function_room_evaluation
    ADD CONSTRAINT fre_chef_fk FOREIGN KEY ( chef_id )
        REFERENCES chef ( chef_id );

ALTER TABLE function_room_evaluation
    ADD CONSTRAINT fre_func_room_fk FOREIGN KEY ( function_room_id )
        REFERENCES function_room ( function_room_id );

ALTER TABLE room_unavailable
    ADD CONSTRAINT room_unavail_func_room_fk FOREIGN KEY ( function_room_id )
        REFERENCES function_room ( function_room_id );

ALTER TABLE specialisation
    ADD CONSTRAINT specialisation_chef_fk FOREIGN KEY ( chef_id )
        REFERENCES chef ( chef_id );

ALTER TABLE specialisation
    ADD CONSTRAINT specialisation_cuisine_type_fk FOREIGN KEY ( cuisine_id )
        REFERENCES cuisine_type ( cuisine_id );

CREATE SEQUENCE function_room_evaluation_funct START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER function_room_evaluation_funct BEFORE
    INSERT ON function_room_evaluation
    FOR EACH ROW
    WHEN ( new.function_room_evaluation_id IS NULL )
BEGIN
    :new.function_room_evaluation_id := function_room_evaluation_funct.nextval;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                             0
-- ALTER TABLE                             23
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           1
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          1
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

SPOOL off
set echo off
