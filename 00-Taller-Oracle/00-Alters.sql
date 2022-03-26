ALTER TABLE review ADD CONSTRAINT review_id_pk PRIMARY KEY(id);
ALTER TABLE user_id ADD CONSTRAINT user_id_id_pk PRIMARY KEY(id);
ALTER TABLE place ADD CONSTRAINT place_id_pk PRIMARY KEY(id);
ALTER TABLE amenity ADD CONSTRAINT amenity_id_pk PRIMARY KEY(id);
ALTER TABLE state ADD CONSTRAINT state_id_pk PRIMARY KEY(id);
ALTER TABLE city ADD CONSTRAINT city_id_pk PRIMARY KEY(id);

ALTER TABLE review ADD CONSTRAINT review_user_id_fk FOREIGN KEY(user_id) REFERENCES user_id(id);
ALTER TABLE review ADD CONSTRAINT review_place_id_fk FOREIGN KEY(place_id) REFERENCES place(id);
ALTER TABLE place ADD CONSTRAINT place_user_id_fk FOREIGN KEY(user_id) REFERENCES user_id(id);
ALTER TABLE place ADD CONSTRAINT place_city_id_fk FOREIGN KEY(city_id) REFERENCES city(id);
ALTER TABLE place_amenity ADD CONSTRAINT place_amenity_amenity_id_fk FOREIGN KEY(amenity_id) REFERENCES amenity(id);
ALTER TABLE place_amenity ADD CONSTRAINT place_amenity_place_id_fk FOREIGN KEY(place_id) REFERENCES place(id);
ALTER TABLE city ADD CONSTRAINT city_state_id_fk FOREIGN KEY(state_id) REFERENCES state(id);