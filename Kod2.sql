-- Вторая таблица: Расписание
CREATE TABLE raspisanie (
    nomer_gruppy INTEGER PRIMARY KEY,
    nomer_laboratorii INTEGER NOT NULL,
    disciplina VARCHAR(100) NOT NULL,
    den_nedeli VARCHAR(20) NOT NULL,
    nomer_pary INTEGER NOT NULL,

    CONSTRAINT fk_raspisanie_laboratorii
        FOREIGN KEY (nomer_laboratorii)
        REFERENCES laboratorii(nomer_laboratorii)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);