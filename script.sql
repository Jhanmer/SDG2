CREATE TABLE IF NOT EXISTS PLU_Usuario(
ItemAi int AUTO_INCREMENT not null,
idUsuario int not null,
CodUsuario char(4) PRIMARY KEY,
Usuario char(20) not null,
Password varchar(50) not null,
Nombres varchar(200) not null,
Apellidos varchar(200) not null,
Email varchar(40) not null,
Permisos enum('Administrador','Usuario normal') not null,
estado char(1) not null,
EnLinea bit not null,
Num_ingresos int not null,
Fec_Creacion date not null,
Fec_Eliminacion date not null,
Fec_Modificacion date not null,
Fec_UltimoAcceso date not null,
Creado_Por varchar(50) not null,
Modificado_Por varchar(50) not null,
Eliminado_Por varchar(50) not null,
Hora_Creacion time not null,
Hora_Modificacion time not null,
Hora_Eliminacion time not null,
Hora_UltimoAcceso time not null
);

INSERT INTO `plu_usuario` (`ItemAi`, `idUsuario`, `CodUsuario`, `Usuario`, `Password`, `Nombres`, `Apellidos`, `Email`, `Permisos`, `estado`, `EnLinea`, `Num_ingresos`, `Fec_Creacion`, `Fec_Eliminacion`, `Fec_Modificacion`, `Fec_UltimoAcceso`, `Creado_Por`, `Modificado_Por`, `Eliminado_Por`, `Hora_Creacion`, `Hora_Modificacion`, `Hora_Eliminacion`, `Hora_UltimoAcceso`) VALUES ('1', '100000001', '001', 'Jhanmer', '123456', 'JHANMER', 'PAUCAR JESUSI', 'hanmerpaucar@gmail.com', 'Usuario normal', '1', b'1', '2', '2022-09-08', '2022-09-30', '2022-09-21', '2022-09-30', 'Javier', 'Mark', 'Jeff', '20:30:58', '20:30:58', '20:30:58', '20:30:58');
