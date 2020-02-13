--
-- Pregunta
-- ===========================================================================
--
-- Para responder la pregunta use el archivo `data.csv`.
--
-- Escriba el código equivalente a la siguiente consulta SQL.
--
--    SELECT
--        firstname,
--        color
--    FROM
--        u
--    WHERE color = 'blue' OR firstname LIKE 'K%';
--
-- Escriba el resultado a la carpeta `output` del directorio actual.
--
fs -rm -f -r output;
--
u = LOAD 'data.csv' USING PigStorage(',')
    AS (id:int,
        firstname:CHARARRAY,
        surname:CHARARRAY,
        birthday:CHARARRAY,
        color:CHARARRAY,
        quantity:INT);
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
filtereddata = FILTER u BY color == 'blue' OR SUBSTRING(firstname,0,1)  == 'K';

ans =  FOREACH filtereddata GENERATE firstname, color;

STORE ans INTO 'output' using PigStorage(',');
