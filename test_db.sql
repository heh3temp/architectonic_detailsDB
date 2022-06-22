set echo on
set linesize 300
set pagesize 500
spool TEST_DB.LIS


SELECT * FROM DETALE;
SELECT * FROM NOTATKI;
SELECT * FROM KATEGORIE;
SELECT * FROM KATEGORIE_DETALI;


SELECT n.tytul FROM NOTATKI n
JOIN DETALE d USING (id_detalu)
WHERE d.nazwa = 'Komnata cesarska';


SELECT d.nazwa FROM DETALE d
JOIN KATEGORIE_DETALI kd USING (id_detalu)
JOIN KATEGORIE k USING (kod_kategorii)
WHERE kod_kategorii = 'RZEZ';



SELECT d1.* FROM DETALE d1
JOIN DETALE d2 ON (d1.id_naddetalu = d2.id_detalu)
WHERE d2.nazwa = 'Pomnik Apolla';


spool off