- Usuarios
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertUsuario(IN v_nombre VARCHAR(100), IN v_email VARCHAR(100), IN v_password VARCHAR(100))
BEGIN
    INSERT INTO tbl_usuario(user_nombre, user_email, user_password) VALUES(v_nombre, v_email, v_password);
END//
DELIMITER ;

-- Actualizar 
DELIMITER //
CREATE PROCEDURE procUpdateUsuario(IN v_id INT, IN v_nombre VARCHAR(100), IN v_email VARCHAR(100), IN v_password VARCHAR(100))
BEGIN
    UPDATE tbl_usuario
    SET user_nombre = v_nombre, user_email = v_email, user_password = v_password
    WHERE user_id = v_id;
END//
DELIMITER ;

-- Mostrar 
DELIMITER //
CREATE PROCEDURE procSelectUsuario()
BEGIN
    SELECT user_id, user_nombre, user_email FROM tbl_usuario;
END//
DELIMITER ;

-- Eliminar 
DELIMITER //
CREATE PROCEDURE procDeleteUsuario(IN v_id INT)
BEGIN
    DELETE FROM tbl_usuario WHERE user_id = v_id;
END//
DELIMITER ;
