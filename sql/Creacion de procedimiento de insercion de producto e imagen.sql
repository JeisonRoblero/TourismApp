create or replace procedure proc_insertar_producto_imagen(nombre_producto varchar, descripcion varchar, precio double precision, estado int, id_comercio int, imagen varchar) 
as
--declare ultimo_id int;
begin
    savepoint insertar_imagen_producto;
    insert into "producto" ("nombre_producto","descripcion","precio","estado","id_comercio") 
    VALUES (nombre_producto, descripcion, precio, estado, id_comercio)/* returning "id_producto" into ultimo_id*/;
    insert into "imagen_producto" ("id_producto","imagen") VALUES(SEC_ID_PRODUCTO.CURRVAL, imagen);
    --insert into "imagen_producto" ("id_producto","imagen") VALUES(ultimo_id, imagen);
    commit;
exception when others then
    rollback to savepoint insertar_imagen_producto;
end;