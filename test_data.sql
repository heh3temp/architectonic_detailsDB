DELETE FROM DETALE;
DELETE FROM KATEGORIE;
DELETE FROM NOTATKI;
DELETE FROM KATEGORIE_DETALI;


-- DETALE
INSERT INTO DETALE
VALUES (NULL, 'Komnata cesarska', 'Majestatyczna komnata cesarska', 'w prawym skrzydle zamku', NULL);

INSERT INTO DETALE
VALUES (NULL, 'Pomnik Apolla', 'Marmurowy pomnik Apolla', 'Po prawej stronie komnaty', 1);

INSERT INTO DETALE
VALUES (NULL, 'Nos Apolla', 'Starannie wykonany nos', 'centrum twarzy Apolla', 2);

commit;


-- KATEGORIE
INSERT INTO KATEGORIE
VALUES ('KOMN', 'Komnata');

INSERT INTO KATEGORIE
VALUES ('RZEZ', 'Rzeźba');

INSERT INTO KATEGORIE
VALUES ('SZCZ', 'Szczegół rzeźby');

commit;


-- NOTATKI
INSERT INTO NOTATKI
VALUES (NULL, 'Właściciel komanty', 'Komnata należała do cesarza Augusta', NULL, 1);

INSERT INTO NOTATKI
VALUES (NULL, 'Kim jest Apollo?', 'Apollo to grecki bóg piękna', NULL, 2);

commit;


-- KATEGORIE_DETALI
INSERT INTO KATEGORIE_DETALI
VALUES ('KOMN', 1);

INSERT INTO KATEGORIE_DETALI
VALUES ('RZEZ', 2);

INSERT INTO KATEGORIE_DETALI
VALUES ('SZCZ', 3);

commit;

