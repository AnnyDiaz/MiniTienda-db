-- Productos

-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertProducto(IN v_nombre VARCHAR(100), IN v_precio DECIMAL(10,2), IN v_categoria_id INT)
BEGIN
    INSERT INTO tbl_producto(prod_nombre, prod_precio, cat_id) VALUES(v_nombre, v_precio, v_categoria_id);
END//
DELIMITER ;

-- Actualizar 
DELIMITER //
CREATE PROCEDURE procUpdateProducto(IN v_id INT, IN v_nombre VARCHAR(100), IN v_precio DECIMAL(10,2), IN v_categoria_id INT)
BEGIN
    UPDATE tbl_producto
    SET prod_nombre = v_nombre, prod_precio = v_precio, cat_id = v_categoria_id
    WHERE prod_id = v_id;
END//
DELIMITER ;

-- Mostrar 
DELIMITER //
CREATE PROCEDURE procSelectProducto()
BEGIN
    SELECT prod_id, prod_nombre, prod_precio, cat_id FROM tbl_producto;
END//
DELIMITER ;

-- Eliminar 
DELIMITER //
CREATE PROCEDURE procDeleteProducto(IN v_id INT)
BEGIN
    DELETE FROM tbl_producto WHERE prod_id = v_id;
END//
DELIMITER ;