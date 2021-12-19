CREATE TABLE IF NOT EXISTS MESERO (
  mes_id INT NOT NULL,
  mes_nombre VARCHAR(200) NULL,
  mes_apellidos VARCHAR(200) NULL,
  mes_documento BIGINT(40) NULL,
  mes_correo VARCHAR(100) NULL,
  mes_telefono BIGINT(40) NULL,
  PRIMARY KEY (mes_id)
  );	