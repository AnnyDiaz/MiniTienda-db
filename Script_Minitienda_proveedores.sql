-- proveedores
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertProveedor(IN v_nombre VARCHAR(100), IN v_direccion VARCHAR(255))
BEGIN
    INSERT INTO tbl_proveedor(prov_nombre, prov_direccion) VALUES(v_nombre, v_direccion);
END//
DELIMITER ;

-- Actualizar 
DELIMITER //
CREATE PROCEDURE procUpdateProveedor(IN v_id INT, IN v_nombre VARCHAR(100), IN v_direccion VARCHAR(255))
BEGIN
    UPDATE tbl_proveedor
    SET prov_nombre = v_nombre, prov_direccion = v_direccion
    WHERE prov_id = v_id;
END//
DELIMITER ;

-- Mostrar 
DELIMITER //
CREATE PROCEDURE procSelectProveedor()
BEGIN
    SELECT prov_id, prov_nombre, prov_direccion FROM tbl_proveedor;
END//
DELIMITER ;

-- Eliminar 
DELIMITER //
CREATE PROCEDURE procDeleteProveedor(IN v_id INT)
BEGIN
    DELETE FROM tbl_proveedor WHERE prov_id = v_id;
END//
DELIMITER ;
