
CREATE TRIGGER insertar_tipos
After INSERT ON pokemon
FOR EACH ROW
BEGIN
  DECLARE tipo_id INT;
  DECLARE tipo_ataque_id INT;
  

  SET tipo_id = FLOOR(RAND() * 15) + 1;
  CASE tipo_id
    WHEN 1 THEN SET NEW.tipo = 'Agua';
    WHEN 2 THEN SET NEW.tipo = 'Bicho';
    WHEN 3 THEN SET NEW.tipo = 'Dragon';
    WHEN 4 THEN SET NEW.tipo = 'Electrico';
    WHEN 5 THEN SET NEW.tipo = 'Fantasma';
    WHEN 6 THEN SET NEW.tipo = 'Fuego';
    WHEN 7 THEN SET NEW.tipo = 'Hielo';
    WHEN 8 THEN SET NEW.tipo = 'Lucha';
    WHEN 9 THEN SET NEW.tipo = 'Normal';
    WHEN 10 THEN SET NEW.tipo = 'Planta';
    WHEN 11 THEN SET NEW.tipo = 'Psiquico';
    WHEN 12 THEN SET NEW.tipo = 'Roca';
    WHEN 13 THEN SET NEW.tipo = 'Tierra';
    WHEN 14 THEN SET NEW.tipo = 'Veneno';
    WHEN 15 THEN SET NEW.tipo = 'Volador';
  END CASE;
  
 
  SET tipo_ataque_id = FLOOR(RAND() * 2) + 1;
  

  INSERT INTO tipo  (id_tipo, tipo, id_tipo_ataque)
  VALUES (tipo_id, NEW.tipo, tipo_ataque_id);
END;