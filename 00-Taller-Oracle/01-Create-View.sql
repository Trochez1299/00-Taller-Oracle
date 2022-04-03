CREATE OR REPLACE VIEW Review_Usuario AS
 SELECT  review.id as REVIEW_ID, user_id.first_name , user_id.id , review.text  FROM REVIEW join USER_ID
  on review.user_id = user_id.id ;
  
SELECT * FROM Review_Usuario;
  
  
CREATE OR REPLACE VIEW Place_City_State AS
 SELECT  place.name, city.name as nombre_ciudad,  state.name as departamento_nombre FROM place 
  join city 
  on place.city_id = city.id
  right join state
  on city.state_id = state.id;
  
SELECT * FROM Place_City_State;
  
CREATE OR REPLACE VIEW Place_Amenity_View AS
 SELECT  place.id , place.name, amenity.name as nombre_amenity  FROM place 
  join place_amenity 
  on place.id = place_amenity.place_id
  right join amenity
  on place_amenity.amenity_id = amenity.id;
  
SELECT * FROM Place_Amenity_View;