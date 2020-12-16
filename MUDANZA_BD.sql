/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     16/12/2020 2:10:59                           */
/*==============================================================*/

CREATE DATABASE MUDANZA

USE MUDANZA

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_EMPLEADO') and o.name = 'FK_DETALLE__DETALLE_E_EMPLEADO')
alter table DETALLE_EMPLEADO
   drop constraint FK_DETALLE__DETALLE_E_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_EMPLEADO') and o.name = 'FK_DETALLE__DETALLE_E_SOLICITU')
alter table DETALLE_EMPLEADO
   drop constraint FK_DETALLE__DETALLE_E_SOLICITU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_POBLACION') and o.name = 'FK_DETALLE__DETALLE_P_POBLACIO')
alter table DETALLE_POBLACION
   drop constraint FK_DETALLE__DETALLE_P_POBLACIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_POBLACION') and o.name = 'FK_DETALLE__DETALLE_P_EMPRESA')
alter table DETALLE_POBLACION
   drop constraint FK_DETALLE__DETALLE_P_EMPRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO_DETALLE') and o.name = 'FK_EMPLEADO_EMPLEADO__EMPLEADO')
alter table EMPLEADO_DETALLE
   drop constraint FK_EMPLEADO_EMPLEADO__EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO_DETALLE') and o.name = 'FK_EMPLEADO_EMPLEADO__EMPRESA')
alter table EMPLEADO_DETALLE
   drop constraint FK_EMPLEADO_EMPLEADO__EMPRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROVINCIA') and o.name = 'FK_PROVINCI_POBLACION_POBLACIO')
alter table PROVINCIA
   drop constraint FK_PROVINCI_POBLACION_POBLACIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SERVICIO_DETALLE') and o.name = 'FK_SERVICIO_SERVICIO__SERVICIO')
alter table SERVICIO_DETALLE
   drop constraint FK_SERVICIO_SERVICIO__SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SERVICIO_DETALLE') and o.name = 'FK_SERVICIO_SERVICIO__EMPRESA')
alter table SERVICIO_DETALLE
   drop constraint FK_SERVICIO_SERVICIO__EMPRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_CLIENTE_S_CLIENTE')
alter table SOLICITUD
   drop constraint FK_SOLICITU_CLIENTE_S_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_EMPRESA_S_EMPRESA')
alter table SOLICITUD
   drop constraint FK_SOLICITU_EMPRESA_S_EMPRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_SERVICIO__SERVICIO')
alter table SOLICITUD
   drop constraint FK_SOLICITU_SERVICIO__SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VEHICULO_DETALLE') and o.name = 'FK_VEHICULO_VEHICULO__VEHICULO')
alter table VEHICULO_DETALLE
   drop constraint FK_VEHICULO_VEHICULO__VEHICULO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VEHICULO_DETALLE') and o.name = 'FK_VEHICULO_VEHICULO__SERVICIO')
alter table VEHICULO_DETALLE
   drop constraint FK_VEHICULO_VEHICULO__SERVICIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DETALLE_EMPLEADO')
            and   name  = 'DETALLE_EMPLEADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index DETALLE_EMPLEADO.DETALLE_EMPLEADO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DETALLE_EMPLEADO')
            and   name  = 'DETALLE_EMPLEADO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index DETALLE_EMPLEADO.DETALLE_EMPLEADO2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DETALLE_EMPLEADO')
            and   type = 'U')
   drop table DETALLE_EMPLEADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DETALLE_POBLACION')
            and   name  = 'DETALLE_POBLACION_FK'
            and   indid > 0
            and   indid < 255)
   drop index DETALLE_POBLACION.DETALLE_POBLACION_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DETALLE_POBLACION')
            and   name  = 'DETALLE_POBLACION2_FK'
            and   indid > 0
            and   indid < 255)
   drop index DETALLE_POBLACION.DETALLE_POBLACION2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DETALLE_POBLACION')
            and   type = 'U')
   drop table DETALLE_POBLACION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADO')
            and   type = 'U')
   drop table EMPLEADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO_DETALLE')
            and   name  = 'EMPLEADO_DETALLE_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO_DETALLE.EMPLEADO_DETALLE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO_DETALLE')
            and   name  = 'EMPLEADO_DETALLE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO_DETALLE.EMPLEADO_DETALLE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADO_DETALLE')
            and   type = 'U')
   drop table EMPLEADO_DETALLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPRESA')
            and   type = 'U')
   drop table EMPRESA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('POBLACION')
            and   type = 'U')
   drop table POBLACION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROVINCIA')
            and   name  = 'POBLACION_PROVINCIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROVINCIA.POBLACION_PROVINCIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROVINCIA')
            and   type = 'U')
   drop table PROVINCIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SERVICIO')
            and   type = 'U')
   drop table SERVICIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SERVICIO_DETALLE')
            and   name  = 'SERVICIO_DETALLE_FK'
            and   indid > 0
            and   indid < 255)
   drop index SERVICIO_DETALLE.SERVICIO_DETALLE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SERVICIO_DETALLE')
            and   name  = 'SERVICIO_DETALLE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SERVICIO_DETALLE.SERVICIO_DETALLE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SERVICIO_DETALLE')
            and   type = 'U')
   drop table SERVICIO_DETALLE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD')
            and   name  = 'CLIENTE_SOLICITUD_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD.CLIENTE_SOLICITUD_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD')
            and   name  = 'SERVICIO_SOLICITUD_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD.SERVICIO_SOLICITUD_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD')
            and   name  = 'EMPRESA_SOLICITUD_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD.EMPRESA_SOLICITUD_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SOLICITUD')
            and   type = 'U')
   drop table SOLICITUD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VEHICULO')
            and   type = 'U')
   drop table VEHICULO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VEHICULO_DETALLE')
            and   name  = 'VEHICULO_DETALLE_FK'
            and   indid > 0
            and   indid < 255)
   drop index VEHICULO_DETALLE.VEHICULO_DETALLE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VEHICULO_DETALLE')
            and   name  = 'VEHICULO_DETALLE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index VEHICULO_DETALLE.VEHICULO_DETALLE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VEHICULO_DETALLE')
            and   type = 'U')
   drop table VEHICULO_DETALLE
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   id_cliente           varchar(25)          not null,
   Nombre_Cliente       varchar(25)          not null,
   Apellido_Cliente     varchar(25)          not null,
   Direccion_Cliente    varchar(25)          not null,
   Telefono_Cliente     varchar(25)          not null,
   constraint PK_CLIENTE primary key nonclustered (id_cliente)
)
go

/* INSERCION DE DATOS DE LA TABLA CLIENTE*/
INSERT INTO CLIENTE(id_cliente,Nombre_Cliente,Apellido_Cliente,Direccion_Cliente,Telefono_Cliente)
VALUES (1,'Luis','Zambrano','Crucita','0978716971');
INSERT INTO CLIENTE(id_cliente,Nombre_Cliente,Apellido_Cliente,Direccion_Cliente,Telefono_Cliente)
VALUES (2,'Marco','Alcivar','olivos','0997854123');
INSERT INTO CLIENTE(id_cliente,Nombre_Cliente,Apellido_Cliente,Direccion_Cliente,Telefono_Cliente)
VALUES (3,'Maria','Aragundi','pueblito','0996541237');


/*==============================================================*/
/* Table: DETALLE_EMPLEADO                                      */
/*==============================================================*/
create table DETALLE_EMPLEADO (
   id_empleado          varchar(25)          not null,
   id_solicitud         varchar(25)          not null,
   constraint PK_DETALLE_EMPLEADO primary key nonclustered (id_empleado, id_solicitud)
)
go

/* INSERCION DE DATOS DE LA TABLA DETALLE EMPLEADO*/

INSERT INTO DETALLE_EMPLEADO(id_empleado,id_solicitud) VALUES ( '1','1');
INSERT INTO DETALLE_EMPLEADO(id_empleado,id_solicitud) VALUES ( '2','2');
INSERT INTO DETALLE_EMPLEADO(id_empleado,id_solicitud) VALUES ( '3','3');

/*==============================================================*/
/* Index: DETALLE_EMPLEADO2_FK                                  */
/*==============================================================*/
create index DETALLE_EMPLEADO2_FK on DETALLE_EMPLEADO (
id_solicitud ASC
)
go

/*==============================================================*/
/* Index: DETALLE_EMPLEADO_FK                                   */
/*==============================================================*/
create index DETALLE_EMPLEADO_FK on DETALLE_EMPLEADO (
id_empleado ASC
)
go

/*==============================================================*/
/* Table: DETALLE_POBLACION                                     */
/*==============================================================*/
create table DETALLE_POBLACION (
   id_poblacion         varchar(25)          not null,
   id_empresa           varchar(25)          not null,
   constraint PK_DETALLE_POBLACION primary key nonclustered (id_poblacion, id_empresa)
)
go

/* INSERCION DE DATOS DE LA TABLA DETALLE POBLACION*/

INSERT INTO DETALLE_POBLACION(id_poblacion,id_empresa) VALUES ('1','1');
INSERT INTO DETALLE_POBLACION(id_poblacion,id_empresa) VALUES ('2','2');
INSERT INTO DETALLE_POBLACION(id_poblacion,id_empresa) VALUES ('3','3');

/*==============================================================*/
/* Index: DETALLE_POBLACION2_FK                                 */
/*==============================================================*/
create index DETALLE_POBLACION2_FK on DETALLE_POBLACION (
id_empresa ASC
)
go

/*==============================================================*/
/* Index: DETALLE_POBLACION_FK                                  */
/*==============================================================*/
create index DETALLE_POBLACION_FK on DETALLE_POBLACION (
id_poblacion ASC
)
go

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   id_empleado          varchar(25)          not null,
   Nombre_Empleado      varchar(25)          not null,
   Apellido_Empleado    varchar(25)          not null,
   Direccion_Empleado   varchar(25)          not null,
   Telefono_Empleado    varchar(25)          not null,
   Tipo_Empleado        varchar(25)          not null,
   constraint PK_EMPLEADO primary key nonclustered (id_empleado)
)
go

/* INSERCION DE DATOS DE LA TABLA DETALLE EMPLEADO*/

INSERT INTO EMPLEADO ( id_empleado,Nombre_Empleado,Apellido_Empleado,Direccion_Empleado,Telefono_Empleado,Tipo_Empleado)
VALUES (1,'Francisco','Lucas','Las Gilces','0986352147','Conductor');
INSERT INTO EMPLEADO ( id_empleado,Nombre_Empleado,Apellido_Empleado,Direccion_Empleado,Telefono_Empleado,Tipo_Empleado)
VALUES (2,'Rosa','Lucas','olmedo','0976324514','reseccionista');
INSERT INTO EMPLEADO ( id_empleado,Nombre_Empleado,Apellido_Empleado,Direccion_Empleado,Telefono_Empleado,Tipo_Empleado)
VALUES (3,'Pablo','Anchuncdia','san alejo','0987569851','Embalador');



/*==============================================================*/
/* Table: EMPLEADO_DETALLE                                      */
/*==============================================================*/
create table EMPLEADO_DETALLE (
   id_empleado          varchar(25)          not null,
   id_empresa           varchar(25)          not null,
   constraint PK_EMPLEADO_DETALLE primary key nonclustered (id_empleado, id_empresa)
)
go

/* INSERCION DE DATOS DE LA TABLA DETALLE EMPLEADO_DETALLE*/

INSERT INTO EMPLEADO_DETALLE ( id_empleado, id_empresa) VALUES ('1','1');
INSERT INTO EMPLEADO_DETALLE ( id_empleado, id_empresa) VALUES ('2','2');
INSERT INTO EMPLEADO_DETALLE ( id_empleado, id_empresa) VALUES ('3','3');

/*==============================================================*/
/* Index: EMPLEADO_DETALLE2_FK                                  */
/*==============================================================*/
create index EMPLEADO_DETALLE2_FK on EMPLEADO_DETALLE (
id_empresa ASC
)
go

/*==============================================================*/
/* Index: EMPLEADO_DETALLE_FK                                   */
/*==============================================================*/
create index EMPLEADO_DETALLE_FK on EMPLEADO_DETALLE (
id_empleado ASC
)
go

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
   id_empresa           varchar(25)          not null,
   Nombre_Empresa       varchar(25)          not null,
   Direccion_Empresa    varchar(25)          not null,
   Telefono_Empresa     varchar(25)          not null,
   constraint PK_EMPRESA primary key nonclustered (id_empresa)
)
go

/* INSERCION DE DATOS DE LA TABLA EMPRESA*/

INSERT INTO EMPRESA( id_empresa,Nombre_Empresa,Direccion_Empresa,Telefono_Empresa) 
VALUES ( 1,'Plutarco','avenida los ejercitos','0987563214');
INSERT INTO EMPRESA( id_empresa,Nombre_Empresa,Direccion_Empresa,Telefono_Empresa) 
VALUES ( 2,'Plation','calle san alejo','0996745123');
INSERT INTO EMPRESA( id_empresa,Nombre_Empresa,Direccion_Empresa,Telefono_Empresa) 
VALUES ( 3,'Plutarco','avenida los ceresitos','0997568241');

/*==============================================================*/
/* Table: POBLACION                                             */
/*==============================================================*/
create table POBLACION (
   id_poblacion         varchar(25)          not null,
   Nombre_Poblacion     varchar(25)          not null,
   constraint PK_POBLACION primary key nonclustered (id_poblacion)
)
go

/* INSERCION DE DATOS DE LA TABLA POBLACION*/


INSERT INTO POBLACION (id_poblacion,Nombre_Poblacion) VALUES (1,'America');
INSERT INTO POBLACION (id_poblacion,Nombre_Poblacion) VALUES (2,'charapoto');
INSERT INTO POBLACION (id_poblacion,Nombre_Poblacion) VALUES (3,'sequita');

/*==============================================================*/
/* Table: PROVINCIA                                             */
/*==============================================================*/
create table PROVINCIA (
   id_provincia         varchar(25)          not null,
   id_poblacion         varchar(25)          not null,
   Nombre_Provincia     varchar(25)          not null,
   constraint PK_PROVINCIA primary key nonclustered (id_provincia)
)
go

/* INSERCION DE DATOS DE LA TABLA PROVINCIA*/

INSERT INTO PROVINCIA ( id_provincia,id_poblacion,Nombre_Provincia)
VALUES (1,1,'Santa Elena');
INSERT INTO PROVINCIA ( id_provincia,id_poblacion,Nombre_Provincia)
VALUES (2,2,'LOJA');
INSERT INTO PROVINCIA ( id_provincia,id_poblacion,Nombre_Provincia)
VALUES (3,3,'Guayas');


/*==============================================================*/
/* Index: POBLACION_PROVINCIA_FK                                */
/*==============================================================*/
create index POBLACION_PROVINCIA_FK on PROVINCIA (
id_poblacion ASC
)
go

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   id_servicio          varchar(25)          not null,
   Tipo_Servicio        varchar(25)          not null,
   Precio_Servicio      int                  not null,
   Hora_Servicio        datetime             not null,
   Peso_Servicio_kg     varchar(25)          not null,
   Fecha_Servicio       datetime             not null,
   Total_Servicio       int                  not null,
   "IVA_Servicio"     varchar(25)                  not null,
   constraint PK_SERVICIO primary key nonclustered (id_servicio)
)
go

/* INSERCION DE DATOS DE LA TABLA PROVINCIA*/

INSERT INTO SERVICIO (id_servicio,Tipo_Servicio,Precio_Servicio,Hora_Servicio,Peso_Servicio_kg,Fecha_Servicio,Total_Servicio,IVA_Servicio)
VALUES (1,'Embalaje',100,'14:00','400 kg','15/06/2020',100,'0');
INSERT INTO SERVICIO (id_servicio,Tipo_Servicio,Precio_Servicio,Hora_Servicio,Peso_Servicio_kg,Fecha_Servicio,Total_Servicio,IVA_Servicio)
VALUES (2,'Transporte',150,'15:00','350kg','06/07/2020',150,'0');
INSERT INTO SERVICIO (id_servicio,Tipo_Servicio,Precio_Servicio,Hora_Servicio,Peso_Servicio_kg,Fecha_Servicio,Total_Servicio,IVA_Servicio)
VALUES (3,'Grua',300,'09:00','500 kg','08/11/2020',300,'15 %');



/*==============================================================*/
/* Table: SERVICIO_DETALLE                                      */
/*==============================================================*/
create table SERVICIO_DETALLE (
   id_servicio          varchar(25)          not null,
   id_empresa           varchar(25)          not null,
   constraint PK_SERVICIO_DETALLE primary key nonclustered (id_servicio, id_empresa)
)
go

/* INSERCION DE DATOS DE LA TABLA DETALLE SERVICIO*/

INSERT INTO SERVICIO_DETALLE (id_servicio,id_empresa) VALUES ('1','1');
INSERT INTO SERVICIO_DETALLE (id_servicio,id_empresa) VALUES ('2','2');
INSERT INTO SERVICIO_DETALLE (id_servicio,id_empresa) VALUES ('3','3');


/*==============================================================*/
/* Index: SERVICIO_DETALLE2_FK                                  */
/*==============================================================*/
create index SERVICIO_DETALLE2_FK on SERVICIO_DETALLE (
id_empresa ASC
)
go

/*==============================================================*/
/* Index: SERVICIO_DETALLE_FK                                   */
/*==============================================================*/
create index SERVICIO_DETALLE_FK on SERVICIO_DETALLE (
id_servicio ASC
)
go

/*==============================================================*/
/* Table: SOLICITUD                                             */
/*==============================================================*/
create table SOLICITUD (
   id_solicitud         varchar(25)          not null,
   id_empresa           varchar(25)          not null,
   id_servicio          varchar(25)          not null,
   id_cliente           varchar(25)          not null,
   Aceptacion_Solicitud varchar(25)          not null,
   Inicio_Solicitud     varchar(25)          not null,
   Destino_Solicitud    varchar(25)          not null,
   Fecha_Solicitud      datetime             not null,
   Numero_Solicitud     varchar(25)          not null,
   Hora_Solicitud       datetime             not null,
   constraint PK_SOLICITUD primary key nonclustered (id_solicitud)
)
go

/* INSERCION DE DATOS DE LA TABLA SOLICITUD*/

INSERT INTO SOLICITUD ( id_solicitud, id_empresa,id_servicio,id_cliente,Aceptacion_Solicitud,Inicio_Solicitud,Destino_Solicitud,Fecha_Solicitud,Numero_Solicitud,Hora_Solicitud) 
VALUES (1,1,1,1,'SI','Montecristi','Chone','10/11/2019','1','16:20');
INSERT INTO SOLICITUD ( id_solicitud, id_empresa,id_servicio,id_cliente,Aceptacion_Solicitud,Inicio_Solicitud,Destino_Solicitud,Fecha_Solicitud,Numero_Solicitud,Hora_Solicitud) 
VALUES (2,2,2,2,'SI','Manta','Bahia','10/12/2019','2','10:20');
INSERT INTO SOLICITUD ( id_solicitud, id_empresa,id_servicio,id_cliente,Aceptacion_Solicitud,Inicio_Solicitud,Destino_Solicitud,Fecha_Solicitud,Numero_Solicitud,Hora_Solicitud) 
VALUES (3,3,3,3,'NO','portoviejo','Colombia','05/11/2019','3','11:20');


/*==============================================================*/
/* Index: EMPRESA_SOLICITUD_FK                                  */
/*==============================================================*/
create index EMPRESA_SOLICITUD_FK on SOLICITUD (
id_empresa ASC
)
go

/*==============================================================*/
/* Index: SERVICIO_SOLICITUD_FK                                 */
/*==============================================================*/
create index SERVICIO_SOLICITUD_FK on SOLICITUD (
id_servicio ASC
)
go

/*==============================================================*/
/* Index: CLIENTE_SOLICITUD_FK                                  */
/*==============================================================*/
create index CLIENTE_SOLICITUD_FK on SOLICITUD (
id_cliente ASC
)
go

/*==============================================================*/
/* Table: VEHICULO                                              */
/*==============================================================*/
create table VEHICULO (
   id_vehiculo          varchar(25)          not null,
   Tipo_Vehiculo        varchar(25)          not null,
   Altura_Vehiculo      varchar(25)          not null,
   Placa_Vehiculo       varchar(25)          not null,
   constraint PK_VEHICULO primary key nonclustered (id_vehiculo)
)
go

/* INSERCION DE DATOS DE LA TABLA VEHICULO*/

INSERT INTO VEHICULO ( id_vehiculo,Tipo_Vehiculo,Altura_Vehiculo,Placa_Vehiculo) VALUES (1,'Camion','4', 'TR45R');
INSERT INTO VEHICULO ( id_vehiculo,Tipo_Vehiculo,Altura_Vehiculo,Placa_Vehiculo) VALUES (2,'Grua','6', 'PO45R');
INSERT INTO VEHICULO ( id_vehiculo,Tipo_Vehiculo,Altura_Vehiculo,Placa_Vehiculo) VALUES (3,'Furgon','3', 'PW45R');

/*==============================================================*/
/* Table: VEHICULO_DETALLE                                      */
/*==============================================================*/
create table VEHICULO_DETALLE (
   id_vehiculo          varchar(25)          not null,
   id_servicio          varchar(25)          not null,
   constraint PK_VEHICULO_DETALLE primary key nonclustered (id_vehiculo, id_servicio)
)
go


/* INSERCION DE DATOS DE LA TABLA VVEHICULO_DETALLE*/

INSERT INTO VEHICULO_DETALLE ( id_vehiculo, id_servicio) VALUES ('1','1');
INSERT INTO VEHICULO_DETALLE ( id_vehiculo, id_servicio) VALUES ('2','2');
INSERT INTO VEHICULO_DETALLE ( id_vehiculo, id_servicio) VALUES ('3','3');


/*==============================================================*/
/* Index: VEHICULO_DETALLE2_FK                                  */
/*==============================================================*/
create index VEHICULO_DETALLE2_FK on VEHICULO_DETALLE (
id_servicio ASC
)
go

/*==============================================================*/
/* Index: VEHICULO_DETALLE_FK                                   */
/*==============================================================*/
create index VEHICULO_DETALLE_FK on VEHICULO_DETALLE (
id_vehiculo ASC
)
go

alter table DETALLE_EMPLEADO
   add constraint FK_DETALLE__DETALLE_E_EMPLEADO foreign key (id_empleado)
      references EMPLEADO (id_empleado)
go

alter table DETALLE_EMPLEADO
   add constraint FK_DETALLE__DETALLE_E_SOLICITU foreign key (id_solicitud)
      references SOLICITUD (id_solicitud)
go

alter table DETALLE_POBLACION
   add constraint FK_DETALLE__DETALLE_P_POBLACIO foreign key (id_poblacion)
      references POBLACION (id_poblacion)
go

alter table DETALLE_POBLACION
   add constraint FK_DETALLE__DETALLE_P_EMPRESA foreign key (id_empresa)
      references EMPRESA (id_empresa)
go

alter table EMPLEADO_DETALLE
   add constraint FK_EMPLEADO_EMPLEADO__EMPLEADO foreign key (id_empleado)
      references EMPLEADO (id_empleado)
go

alter table EMPLEADO_DETALLE
   add constraint FK_EMPLEADO_EMPLEADO__EMPRESA foreign key (id_empresa)
      references EMPRESA (id_empresa)
go

alter table PROVINCIA
   add constraint FK_PROVINCI_POBLACION_POBLACIO foreign key (id_poblacion)
      references POBLACION (id_poblacion)
go

alter table SERVICIO_DETALLE
   add constraint FK_SERVICIO_SERVICIO__SERVICIO foreign key (id_servicio)
      references SERVICIO (id_servicio)
go

alter table SERVICIO_DETALLE
   add constraint FK_SERVICIO_SERVICIO__EMPRESA foreign key (id_empresa)
      references EMPRESA (id_empresa)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_CLIENTE_S_CLIENTE foreign key (id_cliente)
      references CLIENTE (id_cliente)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_EMPRESA_S_EMPRESA foreign key (id_empresa)
      references EMPRESA (id_empresa)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_SERVICIO__SERVICIO foreign key (id_servicio)
      references SERVICIO (id_servicio)
go

alter table VEHICULO_DETALLE
   add constraint FK_VEHICULO_VEHICULO__VEHICULO foreign key (id_vehiculo)
      references VEHICULO (id_vehiculo)
go

alter table VEHICULO_DETALLE
   add constraint FK_VEHICULO_VEHICULO__SERVICIO foreign key (id_servicio)
      references SERVICIO (id_servicio)
go

/*Listar los servicios por pueblo que a sido requerido para cada empresa de mudanza.*/

select SERVICIO.id_servicio,
       SERVICIO.Tipo_Servicio, 
       POBLACION.Nombre_Poblacion, 
	   EMPRESA.Nombre_Empresa
from   POBLACION,SERVICIO left join  EMPRESA 
ON     SERVICIO.id_servicio= EMPRESA.id_empresa 
WHERE  POBLACION.id_poblacion= id_servicio
GROUP BY id_servicio,
         Tipo_Servicio,
         Nombre_Poblacion, 
         Nombre_Empresa
Order by SERVICIO.id_servicio;

/*Tarifa a cobrar el servicio el día 15 de junio del 2020 cuyo peso es de 400 kg indicando el número de solicitud, nombre del cliente y hora de realización del servicio.*/

select /*TOP (3)*/ 
       Precio_Servicio,
       Fecha_Servicio,
	   Peso_Servicio_kg,
       Numero_Solicitud, 
	   Nombre_Cliente,
       Hora_Servicio
from SERVICIO,SOLICITUD left join CLIENTE  
ON CLIENTE.id_cliente=SOLICITUD.id_solicitud 
WHERE Fecha_Servicio= '15/06/2020' AND Peso_Servicio_kg = '400 kg'
GROUP BY Precio_Servicio,Fecha_Servicio,  
         Peso_Servicio_kg,Numero_Solicitud,
		 Nombre_Cliente,Hora_Servicio
		 HAVING COUNT (*) >0
Order by Precio_Servicio;

/*Ingresos mensuales por  pueblo de cada empresa de mudanza*/

SELECT TOP (3) 
       Nombre_Poblacion,
	   Nombre_Empresa, 
sum ( Precio_Servicio * Total_Servicio) 
     as Ingreso_Mensual
FROM POBLACION,EMPRESA inner join SERVICIO
on SERVICIO.id_servicio= EMPRESA.id_empresa
where SERVICIO.id_servicio = id_poblacion
GROUP BY Nombre_Poblacion,
         Nombre_Empresa,
		 Precio_Servicio
order by  Ingreso_Mensual;

/*Cuantas Solicitudes se han aceptado indicando el nombre del cliente 
  que la realizo,fecha solicitud,las poblaciones de origen y destino, precio de cada solicitud al mes*/

  SELECT SOLICITUD.[Aceptacion_Solicitud],
         SOLICITUD.[Fecha_Solicitud], 
         SOLICITUD.Inicio_Solicitud,
		 SOLICITUD.Destino_Solicitud, 
		 CLIENTE.Nombre_Cliente, POBLACION.[id_poblacion], 
         POBLACION.Nombre_Poblacion, 
		 SUM(SERVICIO.Precio_Servicio * Total_Servicio) as Total_Mes
  FROM ((CLIENTE INNER JOIN SOLICITUD 
  ON CLIENTE.[id_cliente] = SOLICITUD.[id_cliente]) INNER JOIN POBLACION
  ON SOLICITUD.[id_cliente] = POBLACION.[id_poblacion]) 
  INNER JOIN SERVICIO 
  ON (POBLACION.[id_poblacion] = SERVICIO.[id_servicio]) AND 
  (SOLICITUD.[id_servicio] = SERVICIO.[id_servicio]) 
  WHERE (((SOLICITUD.[Aceptacion_Solicitud])='Si' 
  Or (SOLICITUD.[Aceptacion_Solicitud])='Si'))
  GROUP BY Aceptacion_Solicitud,
           Fecha_Solicitud,
		   Inicio_Solicitud,
		   Destino_Solicitud,
		   Nombre_Cliente,
		   id_poblacion,
		   Nombre_Poblacion
  Order by Total_Mes;

 