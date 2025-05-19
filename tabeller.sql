
                -- SQL for å opprette tabellene:
                CREATE TABLE Bil (
                    id INTEGER PRIMARY KEY,
                    navn VARCHAR(255),
                    merke VARCHAR(255),
                    modell VARCHAR(255),
                    lenke_til_bilde VARCHAR(255),
                    kilometerstand INTEGER
                );
                CREATE TABLE Kunde (
                    id INTEGER PRIMARY KEY,
                    navn VARCHAR(255),
                    epost VARCHAR(255)
                );
                CREATE TABLE Bestilling (
                    id INTEGER PRIMARY KEY,
                    bil_id INTEGER NOT NULL REFERENCES Bil(id),
                    kunde_id INTEGER NOT NULL REFERENCES Kunde(id)
                );

                
                -- SQL for å sette inn noe test data:
                INSERT INTO Bil (id, navn, merke, modell, lenke_til_bilde, kilometerstand)
                VALUES
                (1, 'Mazda Miata 1990', 'Mazda', 'Miata', 'https://hips.hearstapps.com/hmg-prod/images/1990-mazda-mx-5-miata-bat-105-664e2c563ceff.jpg?crop=1.00xw:0.845xh;0,0.0983xh&resize=640:*', 145000),
                (2, 'Honda Civic', 'Honda', 'Civic', 'https://example.com/honda_civic.jpg', 20000),
                (3, 'Ford Focus', 'Ford', 'Focus', 'https://example.com/ford_focus.jpg', 25000);
                INSERT INTO Kunde (id, navn, epost)
                VALUES
                (1, 'Anna Nordmann', 'anna@example.com'),
                (2, 'Birger Nordmann', 'birger@example.com'),
                (3, 'Christoffer Hansen', 'christoffer@example.com');
                INSERT INTO Bestilling (id, bil_id, kunde_id)
                VALUES
                (1, 1, 1),
                (2, 2, 2),
                (3, 3, 3);
            
            