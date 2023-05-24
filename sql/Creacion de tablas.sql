CREATE TABLE "tipo_comercio" (
  "id_tipoC" int,
  "tipo" varchar2(20),
  PRIMARY KEY ("id_tipoC")
);

CREATE TABLE "turista" (
  "id_turista" int,
  "nombre_user" varchar2(50),
  "correo" varchar2(100),
  "telefono" int,
  "contraseña" varchar2(100),
  PRIMARY KEY ("id_turista")
);

CREATE TABLE "localidad" (
  "id_localidad" int,
  "nombre" varchar2(100),
  "ubicacion" varchar2(100),
  PRIMARY KEY ("id_localidad")
);

CREATE TABLE "comercio" (
  "id_comercio" int,
  "nombre_comercio" varchar2(50),
  "correo" varchar2(100),
  "contraseña" varchar2(50),
  "telefono" int,
  "direccion" varchar2(100),
  "No_doc_SAT" int,
  "descripcion" varchar2(550),
  "calificacion" double precision,
  "id_tipoC" int,
  "id_localidad" int,
  PRIMARY KEY ("id_comercio"),
  CONSTRAINT "FK_comercio.id_tipoC"
    FOREIGN KEY ("id_tipoC")
      REFERENCES "tipo_comercio"("id_tipoC"),
  CONSTRAINT "FK_comercio.id_localidad"
    FOREIGN KEY ("id_localidad")
      REFERENCES "localidad"("id_localidad")
);

CREATE TABLE "producto" (
  "id_producto" int,
  "nombre_producto" varchar2(50),
  "descripcion" varchar2(150),
  "precio" double precision,
  "estado" int,
  "id_comercio" int,
  PRIMARY KEY ("id_producto"),
  CONSTRAINT "FK_producto.id_comercio"
    FOREIGN KEY ("id_comercio")
      REFERENCES "comercio"("id_comercio")
);

CREATE TABLE "carrito" (
  "id_carrito" int,
  "total" double precision,
  "id_turista" int,
  PRIMARY KEY ("id_carrito"),
  CONSTRAINT "FK_carrito.id_turista"
    FOREIGN KEY ("id_turista")
      REFERENCES "turista"("id_turista")
);

CREATE TABLE "producto_carrito" (
  "id_producto_carrito" int,
  "id_producto" int,
  "id_carrito" int,
  PRIMARY KEY ("id_producto_carrito"),
  CONSTRAINT "FK_producto_carrito.id_producto"
    FOREIGN KEY ("id_producto")
      REFERENCES "producto"("id_producto"),
  CONSTRAINT "FK_producto_carrito.id_carrito"
    FOREIGN KEY ("id_carrito")
      REFERENCES "carrito"("id_carrito")
);

CREATE TABLE "factura" (
  "id_factura" int,
  "descripción" varchar2(100),
  "date" date,
  "total" double precision,
  "id_carrito" int,
  PRIMARY KEY ("id_factura")
);

CREATE TABLE "imagen_producto" (
  "id_imagen" int,
  "id_producto" int,
  "imagen" varchar2(3000),
  PRIMARY KEY ("id_imagen"),
  CONSTRAINT "FK_imagen_comercio.id_producto"
    FOREIGN KEY ("id_producto")
      REFERENCES "producto"("id_producto")
);