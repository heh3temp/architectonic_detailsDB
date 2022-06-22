set echo on;
spool TEST_DB_DML.LIS


-- TEST 1: PK Kod_kategorii
INSERT INTO KATEGORIE
VALUES ('FONT', 'Fontanna');

INSERT INTO KATEGORIE
VALUES ('FONT', 'Fontanna nr 2');

rollback;


-- TEST 2: Unique Nazwa
INSERT INTO KATEGORIE
VALUES ('FONT', 'Fontanna');

INSERT INTO KATEGORIE
VALUES ('FON1', 'Fontanna');

rollback;


-- TEST 3: Unique (Tytuł, ID_detalu)
INSERT INTO NOTATKI
VALUES (NULL, 'Notatka nr 1', NULL, NULL, 1);

INSERT INTO NOTATKI
VALUES (NULL, 'Notatka nr 1', NULL, NULL, 1);

rollback;


-- TEST 4: Nietransferowalność tabeli NOTATKI (id_detalu)
UPDATE NOTATKI
SET id_detalu = 2
WHERE id_detalu <> 2;


-- TEST 5: Nietransferowalność tabeli KATEGORIE_DETALI (kod_kategorii)
UPDATE KATEGORIE_DETALI
SET kod_kategorii = 'FONT'
WHERE kod_kategorii <> 'FONT';


-- TEST 6: Nietransferowalność tabeli NOTATKI (id_detalu)
UPDATE KATEGORIE_DETALI
SET id_detalu = 2
WHERE id_detalu <> 2;



spool off;
