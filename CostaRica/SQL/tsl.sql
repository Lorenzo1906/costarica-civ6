CREATE TABLE IF NOT EXISTS StartPosition
    (    MapName TEXT NOT NULL,
        Civilization TEXT,
        Leader TEXT,
        DisabledByCivilization TEXT,
        DisabledByLeader TEXT,
        AlternateStart INT default 0,       
        X INT default 0,
        Y INT default 0);