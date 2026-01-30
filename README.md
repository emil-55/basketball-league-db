# Košarkaška liga — MySQL baza podataka

Relacijska baza podataka za pohranu informacija o klubovima, igračima, utakmicama i nastupima (učinak igrača po utakmici).

Detaljna dokumentacija: [Opis baze podataka](docs/opis_baze_podataka.txt), [Shema](docs/oblikovanje_baze_podataka.pdf)

## Struktura
- `sql/01_schema.sql` — kreiranje tablica
- `sql/02_seed.sql` — popunjavanje tablica iz TSV datoteka
- `sql/03_queries.sql` — primjeri upita
- `docs/opis_baze_podataka.txt` — detaljna dokumentacija projekta
- `docs/oblikovanje_baze_podataka.pdf` — shema baze podataka
- `data/` - podaci u TSV datotekama
  
## Pokretanje (MySQL-CLI)
```bash
mysql --local-infile=1 -u root -p < sql/01_schema.sql
mysql --local-infile=1 -u root -p kosarkaska_liga < sql/02_seed.sql
mysql --local-infile=1 -u root -p kosarkaska_liga < sql/03_queries.sql

