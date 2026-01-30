USE kosarkaska_liga;

LOAD DATA LOCAL INFILE 'data/klubovi.tsv'
INTO TABLE KLUB
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 0 LINES
(naziv_kluba, dvorana, lokacija);

LOAD DATA LOCAL INFILE 'data/igraci.tsv'
INTO TABLE IGRAC
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 0 LINES
(oib, prezime, ime, datr, visina_cm, naziv_kluba);

LOAD DATA LOCAL INFILE 'data/utakmice.tsv'
INTO TABLE UTAKMICA
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 0 LINES
(sifra, domaci_klub, gostujuci_klub, datum, rezultat, pobjednik);

LOAD DATA LOCAL INFILE 'data/nastupi.tsv'
INTO TABLE NASTUPIO
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 0 LINES
(oib, sifra, poeni, skokovi, asistencije, blokade);
