CREATE TABLE notas_finales(
    id_nota_final INT IDENTITY(1,1) PRIMARY KEY,
    carnet VARCHAR(20) NOT NULL,
    nota_final DECIMAL(5,2),
    CONSTRAINT FK_notas_finales_Tb_alumnos FOREIGN KEY (carnet) REFERENCES Tb_alumnos(carnet)
);
DROP TABLE notas_finales;

insert into notas_finales ( carnet , nota_final) values 
('0905-10-1279' , '87.2'),
('0905-15-9622' ,'44.3'),
('0905-15-14297','67'),
('0905-18-4689' ,'45'),
('0905-19-6478', '90');

CREATE TABLE asistencia (
    id_asistenci INT IDENTITY(1,1) PRIMARY KEY,
    carnet VARCHAR(20) NOT NULL,
    fecha DATE,
    presente CHAR(1),
    CONSTRAINT Fk_asistencia_Tb_alumnos FOREIGN KEY (carnet) REFERENCES Tb_alumnos(carnet)
);

insert into asistencia ( carnet , fecha , presente) values 
('0905-10-1279' , '2025-04-02' , 'S'),
('0905-15-9622' ,'2025-04-02' , 'N'),
('0905-15-14297','2025-04-02' , 'S'),
('0905-18-4689' ,'2025-04-02' , 'S'),
('0905-19-6478', '2025-04-02' , 'N');

