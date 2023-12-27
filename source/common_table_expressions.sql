/* Presentacion de fechas con formato definido */

SELECT TO_CHAR(fecha, 'Dy dd/Mon/yy HH:mm:ss.MS') AS format_case_abreviated;
SELECT TO_CHAR(fecha, 'Day dd/Month/yy HH:mm:ss.MS') AS format_case_complete;

/* Presentacion de numeros con formato definido */
SELECT TO_CHAR(numero, 'fm999G999D999') AS format_number_comma;

/* Implementar un procedimiento que permita calcular el monto las ventas, 
por país de destino, mediante el uso de CTE 

(suponiendo tabla = "sales_table" & ventas = "sale_value" & pais = "country") */

CREATE PROCEDURE sumar_by_country AS BEGIN SELECT country, SUM(sale_value) FROM sales_table GROUP BY country END
EXEC sumar_by_country

/* Si el postulante no tiene DNI, deberá ingresar su código de estudiante (10 dígitos),
sino su número de matrícula (12 dígitos), sino un mensaje ‘DOCUMENTO SIN VERIFICAR’.

(suponiendo tabla = "students_table" & DNI = "dni" & código de estudiante = "student_code" & número de matricula = "matricula_number") */

CREATE PROCEDURE student_dni AS BEGIN 
CASE WHEN dni IS NULL THEN COALESCE(student_code, matricula_number) ELSE "DOCUMENTO SIN VERIFICAR" END AS new_dni FROM students_tabla END
EXEC student_dni