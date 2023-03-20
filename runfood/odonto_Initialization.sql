-- PROYECTO GRUPAL
-- CARGAR ALGUNOS DOCTORES
insert into doctores (id, nombre, apellido, ruc, telefono, observacion, email, password, created_at) values
	(1, "CONSULTORIO ODONTOLÓGICO", "S.A.", "123.456-7", "0987 654321", "Ninguna", "elconsultorio@gmail.com", "12345678", NOW()),
	(2, "Alejandro", "Arevalos", "123.456-7", "0987 654321", "Ninguna", "a.arevalos@gmail.com", "12345678", NOW()),
    (3, "Berta", "Baez", "123.456-7", "0987 654321", "Ninguna", "b.baez@gmail.com", "12345678", NOW()),
	(5,'Doctor1', 'apellido1', '111111','111111','observacion1','doctor1@gmail.com','contraseña1',now()), 
	(6,'Doctor2', 'apellido2', '222222','222222','observacion2','doctor2@gmail.com','contraseña2',now());
SELECT * FROM doctores;
-- CARGAR ALGUNOS PACIENTES
insert into pacientes values 
	(1,'Mauricio','Apellido','111111','masas@gmail.com','111111',now(),'masculino','carie',now(),now(),1), 
    (2,'paciente2','Apellido2','123123','aoao@gmail.com','123123',now(),'femenino','no se',now(),now(),2);
SELECT * FROM pacientes;
-- CARGAR ALGUNAS CONSULTAS YA AGENDADAS
insert into consultas values 
	(1, now(),'ninguno',50000,75000,now(),now(),1,1),
	(2, '2023-03-18 20:57:29','ninguno2',30000,50000,now(),now(),2,1);
SELECT * FROM consultas;
-- CARGAR ALGUNOS TRATAMIENTOS
insert into tratamientos (id, nombre, observacion) values
    (1, "Implante Dental", "Ninguno"),
	(2, "Ortodoncia", "Ninguno"),
    (3, "Implante Dental", "Ninguno"),
    (4, "Endodoncia", "Ninguno");
SELECT * FROM tratamientos;