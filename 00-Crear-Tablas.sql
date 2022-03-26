CREATE TABLE review (
    id varchar(50),
    update_at DATE DEFAULT SYSDATE,
    created_at DATE DEFAULT SYSDATE,
    user_id VARCHAR(50),
    place_id VARCHAR(50),
    text VARCHAR(50)
);

CREATE TABLE user_id (
    id VARCHAR2(50),
    update_at DATE DEFAULT SYSDATE,
    created_at DATE DEFAULT SYSDATE,
    email VARCHAR2(50),
    password VARCHAR2(50),
    first_name VARCHAR2(50),
    last_name VARCHAR2(50)
);

CREATE TABLE place (
    id VARCHAR2(50),
    update_at DATE DEFAULT SYSDATE,
    created_at DATE DEFAULT SYSDATE,
    user_id VARCHAR2(50),
    name VARCHAR2(50),
    city_id VARCHAR2(50),
    descripcion VARCHAR2(50),
    number_rooms NUMBER(10) DEFAULT 0,
    number_bathrooms NUMBER(10) DEFAULT 0,
    max_guest NUMBER(10) DEFAULT 0,
    price_by_night NUMBER(10) DEFAULT 0,
    latitude NUMBER(12),
    longitude NUMBER(12)
);

CREATE TABLE amenity (
    id VARCHAR2(50),
    update_at DATE DEFAULT SYSDATE,
    created_at DATE DEFAULT SYSDATE,
    name VARCHAR2(50)
);

CREATE TABLE place_amenity (
    amenity_id VARCHAR2(50),
    place_id VARCHAR2(50)
);

CREATE TABLE state (
    id VARCHAR2(50),
    update_at DATE DEFAULT SYSDATE,
    created_at DATE DEFAULT SYSDATE,
    name VARCHAR2(50)
);

CREATE TABLE city (
    id VARCHAR2(50),
    update_at DATE DEFAULT SYSDATE,
    created_at DATE DEFAULT SYSDATE,
    state_id VARCHAR2(50),
    name VARCHAR2(50)
);
