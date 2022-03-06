--Ejercicio 1: Cantidad de lotes pertenecientes a una misma constructora por vecindario
SELECT id_Constructora,  Vecindarios_Lim_Analisis, COUNT(*)
FROM Constructora a
INNER JOIN Lote b
  ON a.Id_Constructora = b.Id_constructora
GROUP BY a.Id_Constructora, Vecindarios_Lim_Analisis

--Ejercicio 2: Cantidad de construcciones de un mismo tipo existentes en un mismo vecindario 
SELECT Vecindarios_Lim_Analisis, Tipo_Construccion_Existente, COUNT(*)
FROM Constructora a
INNER JOIN Lote b
  ON a.Id_Constructora = b.Id_constructora
GROUP BY Tipo_Construccion_Existente, Vecindario_Lim_Analisis

--Ejercicio 3: Cantidad de permisos clasificado por constructora y tipo de permiso
SELECT Id_Constructora, Tipo_Permiso, COUNT(*)
FROM Constructora a
INNER JOIN Permiso  b
  ON a.Id_Permiso = b.Id_Permiso
GROUP BY Id_Constructora, Tipo_Permiso

--Ejercicio 4: Cantidad de construcciones por Constructora que se encuentran en estado "F" agrupados por ubicación, constructora y estado actual . 
SELECT a.Id_Constructora, Ubicacion, COUNT(*) 
FROM Constructora a
JOIN Lote b
  ON a.Id_Constructora = b.Id_Constructora 
GROUP BY  a.Id_Constructora, Ubicacion, Estado_Actual
HAVING Estado_Actual = "F"

--Ejercicio 5: Cantidad de construcciones por constructora con el mismo tipo de permiso y que la fecha de creación del permiso sea mayor al 01-Ene-2015
SELECT Id_Constructora, Tipo_Permiso, Count(*)
FROM Constructora a 
INNER JOIN Permiso b
  ON a.Id_Permiso = b.Id_Permiso 
WHERE Fecha_Creacion_Permiso > '01-01-2015'
GROUP BY Id_Constructora, Tipo_Permiso