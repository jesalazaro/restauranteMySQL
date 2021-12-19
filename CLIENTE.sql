CREATE TABLE IF NOT EXISTS CLIENTE (
  cli_id INT NOT NULL,
  cli_nombres VARCHAR(100) NULL,
  cli_apellidos VARCHAR(100) NULL,
  cli_documento BIGINT(40) NULL,
  cli_telefono BIGINT(40) NULL,
  PRIMARY KEY (cli_id)
  );