/*Creacion de secuencias que controlan los ID*/
create sequence sec_id_comercio 
start with 1
increment by 1
minvalue 1;

create sequence sec_id_tipo_comercio
start with 1
increment by 1
minvalue 1;

create sequence sec_id_turista
start with 1
increment by 1
minvalue 1;

create sequence sec_id_producto
start with 1
increment by 1
minvalue 1;

create sequence sec_id_imagen
start with 1
increment by 1
minvalue 1;

create sequence sec_id_producto_carrito
start with 1
increment by 1
minvalue 1;

create sequence sec_id_carrito
start with 1
increment by 1
minvalue 1;

create sequence sec_id_localidad
start with 1
increment by 1
minvalue 1;

create sequence sec_id_factura
start with 1000
increment by 1
minvalue 1000;

/*Creacion de triggers que controlan los ID*/
create or replace trigger tr_id_comercio 
before insert on "comercio"
for each row
begin
    select SEC_ID_COMERCIO.NEXTVAL into :new."id_comercio" from dual;
end;

create or replace trigger tr_id_tipo_comercio
before insert on "tipo_comercio"
for each row
begin
    select SEC_ID_TIPO_COMERCIO.NEXTVAL into :new."id_tipoC" from dual;
end;


create or replace trigger tr_id_turista
before insert on "turista"
for each row
begin
    select SEC_ID_TURISTA.NEXTVAL into :new."id_turista" from dual;
end;

create or replace trigger tr_id_producto
before insert on "producto"
for each row
begin
    select SEC_ID_PRODUCTO.NEXTVAL into :new."id_producto" from dual;
end;

create or replace trigger tr_id_imagen
before insert on "imagen_producto"
for each row
begin
    select SEC_ID_IMAGEN.NEXTVAL into :new."id_imagen" from dual;
end;

create or replace trigger tr_id_producto_carrito
before insert on "producto_carrito"
for each row
begin
    select SEC_ID_PRODUCTO_CARRITO.NEXTVAL into :new."id_producto_carrito" from dual;
end;

create or replace trigger tr_id_carrito
before insert on "carrito"
for each row
begin
    select SEC_ID_CARRITO.NEXTVAL into :new."id_carrito" from dual;
end;

create or replace trigger tr_id_localidad
before insert on "localidad"
for each row
begin
    select SEC_ID_LOCALIDAD.NEXTVAL into :new."id_localidad" from dual;
end;

create or replace trigger tr_id_factura
before insert on "factura"
for each row
begin
    select SEC_ID_FACTURA.NEXTVAL into :new."id_factura" from dual;
end;