drop type personal_t;
drop type adresse_t;

create or replace type Adresse_t as object
    (strasse varchar2(20),
    hausnr number(5),
    plz number(5),
    ort varchar2(40));


create or replace type personal_t  as object
    (nachname varchar2(20),
    vorname varchar(20),
    geburtsdatum date,
    gehalt number(7,2),
    kinder number(5),
    adresse adresse_t);

CREATE TABLE personal_o OF personal_t
OBJECT IDENTIFIER IS SYSTEM GENERATED;

insert into personal_o values (
    personal_t('Hörler', 'Ivan', to_date('1999-12-01', 'YYYY-MM-DD'), 1000.00, 4,
        adresse_t('musterstrasse', 2, 4900, 'Langenthal')));


insert into personal_o values (
    personal_t('Strati', 'Michael', to_date('1998-12-01', 'YYYY-MM-DD'), 1200.00, 4,
        adresse_t('musterstrasse', 2, 4800, 'Aarau')));

insert into personal_o values (
    personal_t('Cadaroski', 'Ismail', to_date('1997-12-01', 'YYYY-MM-DD'), 1100.00, 4,
        adresse_t('musterstrasse', 2, 4700, 'Bern')));
