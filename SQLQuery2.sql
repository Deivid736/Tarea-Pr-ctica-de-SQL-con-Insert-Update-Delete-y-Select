UPDATE Tb_alumnos
SET Seccion = 'C'
WHERE Seccion = 'A';

UPDATE Tb_alumnos
SET Seccion = 'A'
WHERE Seccion = 'B';

UPDATE Tb_alumnos
SET Seccion = 'B'
WHERE Seccion = 'C';

select * from Tb_alumnos
select * from Tb_alumnos where Seccion = 'A'

SELECT a.Estudiante, t.nota1, t.nota2, t.nota3, t.nota4
FROM Tb_alumnos a
JOIN tareas t ON a.carnet = t.Carnet;

UPDATE notas_finales
SET nota_final = 85  
WHERE carnet = '0905-15-9622'; 

select * from notas_finales WHERE nota_final = 85 

select * from asistencia

delete from asistencia where carnet = ('0905-19-6478')

SELECT a.Estudiante, 
       MAX(asi.fecha) AS ultima_asistencia, 
       nf.nota_final
FROM Tb_alumnos a
JOIN notas_finales nf ON a.carnet = nf.carnet
JOIN asistencia asi ON a.carnet = asi.carnet
GROUP BY a.Estudiante, nf.nota_final;