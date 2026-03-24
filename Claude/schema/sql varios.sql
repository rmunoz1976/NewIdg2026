SELECT ID, code, name_spanish, code_iso_alpha2, code_iso_alpha3, code_iso_numeric
  FROM intermediary_db.t074t_countries
 WHERE ID  not IN (SELECT DISTINCT id_country FROM intermediary_db.t076t_states)
 ORDER BY ID;


SELECT * FROM intermediary_db.t076t_states
order by created_at desc ;

SELECT * FROM intermediary_db.t070t_division_type ORDER BY ID DESC;

SELECT 
    ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS consecutivo,
    descripcion_geo, 
    descripcion_departamento_geo, 
    count(*)
FROM dbintermediary.t152t_administrative_divisions
WHERE upper(descripcion_geo) LIKE '%austri%'
GROUP BY descripcion_geo, descripcion_departamento_geo;


SELECT concat(c.code, ' - ', c.name_english) cd_name
FROM intermediary_db.t074t_countries c
order by c.code
;