
--==============================================================================
-- Fecha: 16:09 mi�rcoles, 26 de diciembre de 2018 - edixson.matos@ada.co
-- agregar columnas para guardar el valor del RUCOM
--==============================================================================

ALTER TABLE TESORE01.MAESTRO_TERCEROS
ADD (CODIGO_RUCOM VARCHAR2(20 BYTE))
;

COMMENT ON COLUMN 
TESORE01.MAESTRO_TERCEROS.CODIGO_RUCOM IS 
'CONTIENE EL CODIGO DE RUCOM DEL TERCERO'
;

--==============================================================================
-- Fecha: 09:40 viernes, 04 de enero de 2019 - edixson.matos@ada.co
-- agregar columna de fecha de registro
--==============================================================================
ALTER TABLE TESORE01.MAESTRO_TERCEROS
ADD (FECHA_REGISTRO DATE DEFAULT SYSDATE)
;


--==============================================================================
-- Fecha: 15:38 viernes, 04 de enero de 2019 - edixson.matos@ada.co
-- se agergan alter a maestro_terceros ya que hay clientes que actualmente no tienen esas columnas "viejas" 
--==============================================================================

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (ID_DEPARTAMENTO  NUMBER(10));

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (CELULAR  NUMBER(15));

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (ACTIVIDAD_ECONOMICA  VARCHAR2(200 BYTE));

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (CODIGO_CUENTA_CREE  NUMBER(10));

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (RETENEDOR_CREE  CHAR(1 BYTE));

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (USUARIO_EMPRESA  VARCHAR2(30 BYTE)            DEFAULT USER);

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (CODIGO_CIUDAD_ALTERNA  NUMBER(10));

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (ORGANIZACION_JURIDICA  NUMBER(2));

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (LOGIN  VARCHAR2(20 BYTE));

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (PASSWORD  VARCHAR2(50 BYTE));

ALTER TABLE TESORE01.MAESTRO_TERCEROS
 ADD (CODIGO_MEMPRESA  VARCHAR2(50 BYTE)            DEFAULT SYS_CONTEXT('CTX_SICOF','CODIGO_MEMPRESA'));
