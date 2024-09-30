-- Categorias
-- insertar
DELIMITER // 
create procedure procInsertCategory( IN v_description varchar(45))
begin
insert into tbl_categoria(cat_descripcion) values(v_description);
end//
DELIMITER ;


-- 	actualizar
DELIMITER // 
CREATE PROCEDURE procUpdateCategory(IN v_id INT,IN v_description VARCHAR(45))
BEGIN
update tbl_categoria
set cat_descripcion = v_description 
where cat_id = v_id;
END//
DELIMITER ;

-- Mostrar
DELIMITER // 
CREATE PROCEDURE procSelectCategory()
BEGIN 
select  cat_id, cat_descripcion from tbl_categoria;
END//
DELIMITER ;

-- Eliminar
DELIMITER // 
CREATE PROCEDURE procDeleteCategory (IN v_id INT)
BEGIN
delete from tbl_categoria where cat_id = v_id;
END//
DELIMITER ;





