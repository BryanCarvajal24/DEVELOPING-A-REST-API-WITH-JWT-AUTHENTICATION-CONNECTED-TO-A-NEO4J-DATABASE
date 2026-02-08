// Creamos Deporte: Futbol

CREATE
(s1:Sport{
id: 1,
Name: 'Football',
Category: 'Team Sport',
OnField_Players: 11,
AVG_Time_MIN: 90,
Home_Country: 'England'});

// Creamos Deporte: Tennis
CREATE
(s2:Sport{
id: 2,
Name: 'Tennis',
Category: 'Solo Sport',
OnField_Players: 1,
AVG_Time_MIN: 210,
Home_Country: 'England'});

// Creamos Equipos de Futbol
CREATE
(t2: Team {
id: 2,
Name: 'FC Barcelona',
Category: 'Masculine',
City: 'Barcelona',
Division: 'LaLiga',
Stadium: 'Spotify Camp Nou',
Manager: 'Hansi Flick',
President: 'Joan Laporta'}),

(t3: Team {
id: 3,
Name: 'Bayern Munich',
Category: 'Masculine',
City: 'Munich',
Division: 'Bundesliga',
Stadium: 'Allianz Arena',
Manager: 'Vincent Kompany',
President: 'Herbert Hainer'}),

(t4: Team {
id: 4,
Name: 'Paris Saint-Germain',
Category: 'Masculine',
City: 'Paris',
Division: 'Ligue 1',
Stadium: 'Parc des Princes',
Manager: 'Luis Enrique',
President: 'Nasser Al-Khelaifi'}),

(t5: Team {
id: 5,
Name: 'Manchester United',
Category: 'Masculine',
City: 'Manchester',
Division: 'Premier League',
Stadium: 'Old Trafford',
Manager: 'Ruben Amorim',
President: 'Joel Glazer'}),

(t6: Team {
id: 6,
Name: 'Chelsea FC Women',
Category: 'Feminine',
City: 'London',
Division: 'FA Womens Super League',
Stadium: 'Kingsmeadow',
Manager: 'Emma Hayes',
President: 'Todd Boehly'}),

(t7: Team {
id: 7,
Name: 'Real Madrid',
Category: 'Masculine',
City: 'Madrid',
Division: 'LaLiga',
Stadium: 'Santiago Bernabéu',
Manager: 'Carlo Ancelotti',
President: 'Florentino Pérez'});
// Crear Jugadores


CREATE 
(p1:Player {
id: 1, 
Name: 'Joshua Kimmich',
Gender: 'M',
Position: 'Midfielder', 
Dominant_Foot: 'Right'}),


(p2:Player {
id: 2, 
Name: 'Marcus Rashford', 
Gender: 'M',
Position: 'Forward', 
Dominant_Foot: 'Right'}),

(p3:Player {
id: 3, 
Name: 'David Alaba', 
Gender: 'M',
Position: 'Defender', 
Dominant_Foot: 'Left'}),

(p4: Player{
id: 4, 
Name: 'Vinícius Júnior', 
Gender: 'M',
Position: 'Winger',
Dominant_Foot: 'Left'
}),
(p5:Player {
    id: 5, 
    Name: 'Pedro González López',
    Gender: 'M',
    Position: 'Midfielder', 
    Dominant_Foot: 'Right'
}),(p6:Player {
    id: 6, 
    Name: 'Erling Haaland',
    Gender: 'M',
    Position: 'Forward', 
    Dominant_Foot: 'Left'}),
(p7:Player {
    id: 7, 
    Name: 'Jude Bellingham',
    Gender: 'M',
    Position: 'Midfielder', 
    Dominant_Foot: 'Right'}),
(p8:Player {
    id: 8, 
    Name: 'Kylian Mbappé',
    Gender: 'M',
    Position: 'Forward', 
    Dominant_Foot: 'Right'}),
(p9:Player {
    id: 9,
    Name: 'Carlos Alcaraz',
    Gender: 'M',
    Position: 'Singles',
    Dominant_Hand: 'Right'}),
(p10:Player {
    id: 10,
    Name: 'Novak Djokovic',
    Gender: 'M',
    Position: 'Singles',
    Dominant_Hand: 'Right'}),
(p11:Player {
    id: 11,
    Name: 'Iga Świątek',
    Gender: 'F',
    Position: 'Singles',
    Dominant_Hand: 'Right'}),
(p12:Player {
    id: 12,
    Name: 'Rafael Nadal',
    Gender: 'M',
    Position: 'Singles',
    Dominant_Hand: 'Left'}),
(p13:Player {
    id: 13,
    Name: 'Coco Gauff',
    Gender: 'F',
    Position: 'Singles',
    Dominant_Hand: 'Right'});

// Crear Paises

CREATE (c1: Country
{id: 1,
Name: 'England',
ISO: 'GBR',
Capital: 'London',
Continent: 'Europe',
Population_MILL: 56.48,
Area_KM2: 130.279,
Languague: 'English',
Currency: 'Pounds',
Government: 'Monarchy'}),

(c2: Country {
id: 2,
Name: 'Germany',
ISO: 'DEU',
Capital: 'Berlin',
Continent: 'Europe',
Population_MILL: 83.24,
Area_KM2: 357.022,
Languague: 'German',
Currency: 'Euro',
Government: 'Republic'}),

(c3: Country {
id: 3,
Name: 'France',
ISO: 'FRA',
Capital: 'Paris',
Continent: 'Europe',
Population_MILL: 67.39,
Area_KM2: 551.695,
Languague: 'French',
Currency: 'Euro',
Government: 'Republic'}),

(c4: Country {
id: 4,
Name: 'Spain',
ISO: 'ESP',
Capital: 'Madrid',
Continent: 'Europe',
Population_MILL: 47.35,
Area_KM2: 505.944,
Languague: 'Spanish',
Currency: 'Euro',
Government: 'Monarchy'}),

(c5: Country {
id: 5,
Name: 'Austria',
ISO: 'AUT',
Capital: 'Vienna',
Continent: 'Europe',
Population_MILL: 8.9,
Area_KM2: 83879,
Languague: 'German',
Currency: 'Euro',
Government: 'Republic'}),

(c6: Country {
id: 6,
Name: 'Brazil',
ISO: 'BRA',
Capital: 'Brasília',
Continent: 'South America',
Population_MILL: 213.99,
Area_KM2: 8515767,
Languague: 'Portuguese',
Currency: 'Real',
Government: 'Republic'}),
(c7:Country {
    id: 7,
    Name: 'Norway',
    ISO: 'NOR',
    Capital: 'Oslo',
    Continent: 'Europe',
    Population_MILL: 5.4,
    Area_KM2: 385207,
    Languague: 'Norwegian',
    Currency: 'Norwegian Krone',
    Government: 'Monarchy'}),
(c8:Country {
    id: 8,
    Name: 'Serbia',
    ISO: 'SRB',
    Capital: 'Belgrade',
    Continent: 'Europe',
    Population_MILL: 6.8,
    Area_KM2: 88361,
    Languague: 'Serbian',
    Currency: 'Serbian Dinar',
    Government: 'Republic'}),
(c9:Country {
    id: 9,
    Name: 'Poland',
    ISO: 'POL',
    Capital: 'Warsaw',
    Continent: 'Europe',
    Population_MILL: 37.8,
    Area_KM2: 312696,
    Languague: 'Polish',
    Currency: 'Złoty',
    Government: 'Republic'}),(c10:Country {
    id: 10,
    Name: 'United States',
    ISO: 'USA',
    Capital: 'Washington D.C.',
    Continent: 'North America',
    Population_MILL: 331.9,
    Area_KM2: 9833517,
    Languague: 'English',
    Currency: 'Dollar',
    Government: 'Republic'});

// Creamos Relacion Jugadores Equipo 


MATCH (p:Player {id: 1}), (t:Team {id: 3})
MERGE (p)-[:PLAYS_FOR {
contract_start: date('2020-01-01'),
contract_end: date('2025-06-30'),
jersey_number: 6
}]->(t);

MATCH (p:Player {id: 2}), (t:Team {id: 5})
MERGE (p)-[:PLAYS_FOR {
contract_start: date('2019-07-01'),
contract_end: date('2028-06-30'),
jersey_number: 10
}]->(t);

MATCH (p:Player {id: 3}), (t:Team {id: 7})
MERGE (p)-[:PLAYS_FOR {
contract_start: date('2021-07-01'),
contract_end: date('2026-06-30'),
jersey_number: 4
}]->(t);

MATCH (p:Player {id: 4}), (t:Team {id: 7})
MERGE (p)-[:PLAYS_FOR {
contract_start: date('2018-07-01'),
contract_end: date('2027-06-30'),
jersey_number: 7
}]->(t);
MATCH (p:Player {id: 6}), (t:Team {id: 5})
MERGE (p)-[:PLAYS_FOR {
    contract_start: date('2022-07-01'),
    contract_end: date('2027-06-30'),
    jersey_number: 9
}]->(t);

MATCH (p:Player {id: 7}), (t:Team {id: 7})
MERGE (p)-[:PLAYS_FOR {
    contract_start: date('2023-07-01'),
    contract_end: date('2029-06-30'),
    jersey_number: 5
}]->(t);

MATCH (p:Player {id: 8}), (t:Team {id: 4})
MERGE (p)-[:PLAYS_FOR {
    contract_start: date('2017-08-31'),
    contract_end: date('2024-06-30'),
    jersey_number: 7
}]->(t);

MATCH (jugador:Player {id: 5}), (equipo:Team {id: 2})
MERGE (jugador)-[:PLAYS_FOR {
    contract_start: date('2020-08-01'),
    contract_end: date('2026-06-30'),
    jersey_number: 8
}]->(equipo);

MATCH (Jugador:Player {id: 6}), (Equipo:Team {id: 3})
CREATE (Jugador)-[:Played_For {
    Start: date('2020-01-01'),
    End: date('2022-06-30'),
    Salary_Weekly: 850000,
    Goals_Scored: 86
}]->(Equipo);

MATCH (Jugador:Player {id: 7}), (Equipo:Team {id: 3})
CREATE (Jugador)-[:Played_For {
    Start: date('2020-07-01'),
    End: date('2023-06-30'),
    Salary_Weekly: 750000,
    Goals_Scored: 24
}]->(Equipo);

MATCH (Jugador:Player {id: 8}), (Equipo:Team {id: 4})
CREATE (Jugador)-[:PLAYS_FOR {
    contract_start: date('2017-08-31'),
    contract_end: date('2024-06-30'),
    jersey_number: 7,
    Goals_Scored: 175
}]->(Equipo);

// Crear Relacion entre equipos y deportes
MATCH (Equipo:Team {id: 2}), (Deporte:Sport {id: 1})
CREATE (Equipo)-[:Plays {
    Foundation_Year: date('1899'),
    Category: 'Professional'}]->(Deporte);
 
MATCH (Equipo:Team {id: 3}), (Deporte:Sport {id: 1})
CREATE (Equipo)-[:Plays {
    Foundation_Year: date('1900'),
    Category: 'Professional'}]->(Deporte);
 
MATCH (Equipo:Team {id: 4}), (Deporte:Sport {id: 1})
CREATE (Equipo)-[:Plays {
    Foundation_Year: date('1970'),
    Category: 'Professional'}]->(Deporte);
 
MATCH (Equipo:Team {id: 5}), (Deporte:Sport {id: 1})
CREATE (Equipo)-[:Plays {
    Foundation_Year: date('1878'),
    Category: 'Professional'}]->(Deporte);
 
MATCH (Equipo:Team {id: 6}), (Deporte:Sport {id: 1})
CREATE (Equipo)-[:Plays {
    Foundation_Year: date('2004'),
    Category: 'Professional'}]->(Deporte);

MATCH (Equipo:Team {id: 7}), (Deporte:Sport {id: 1})
CREATE (Equipo)-[:Plays {
    Foundation_Year: date('1902'),
    Category: 'Professional'}]->(Deporte);

// Crear Relacion entre Jugadores y deportes
MATCH (Jugador:Player), (Deporte:Sport {id: 1})
WHERE Jugador.id IN [1,2,3,4,5,6,7,8]  // IDs de todos los futbolistas
CREATE (Jugador)-[:Plays {
    Start_Year: CASE Jugador.id
        WHEN 1 THEN date('2016-01-01')  // Kimmich
        WHEN 2 THEN date('2015-01-01')  // Rashford
        WHEN 3 THEN date('2010-01-01')  // Alaba
        WHEN 4 THEN date('2017-01-01')  // Vinícius
        WHEN 5 THEN date('2020-01-01')  // Pedri
        WHEN 6 THEN date('2019-01-01')  // Haaland
        WHEN 7 THEN date('2020-01-01')  // Bellingham
        WHEN 8 THEN date('2016-01-01')  // Mbappé
    END,
    Category: 'Professional'
    
}]->(Deporte);
MATCH (Jugador:Player), (Deporte:Sport {id: 2})
WHERE Jugador.id IN [9,10,11,12,13]
CREATE (Jugador)-[:Plays {
    Start_Year: CASE Jugador.id
        WHEN 9 THEN date('2018-01-01')  // Alcaraz
        WHEN 10 THEN date('2003-01-01') // Djokovic
        WHEN 11 THEN date('2016-01-01') // Świątek
        WHEN 12 THEN date('2001-01-01') // Nadal
        WHEN 13 THEN date('2018-01-01') // Gauff
    END,
    Category: 'Professional'
    
}]->(Deporte);

// Crear Relacion entre jugadores y Pais
MATCH (Jugador:Player {id: 2}), (Pais:Country {id: 1})
CREATE (Jugador)-[:Born_In {
    DOB: date('1997-10-31')}]->(Pais);
 
MATCH (Jugador:Player {id: 3}), (Pais:Country {id: 5})
CREATE (Jugador)-[:Born_In {
    DOB: date('1992-06-24')}]->(Pais);
 
MATCH (Jugador:Player {id: 1}), (Pais:Country {id: 2})
CREATE (Jugador)-[:Born_In {
    DOB: date('1995-02-08')}]->(Pais);
 
MATCH (Jugador:Player {id: 4}), (Pais:Country {id: 6})
CREATE (Jugador)-[:Born_In {
    DOB: date('2000-07-12')}]->(Pais);

MATCH (jugador:Player {id: 5}), (pais:Country {id: 4})
CREATE (jugador)-[:Born_In {
    DOB: date('2002-11-25')}]->(pais);

    MATCH (Jugador:Player {id: 6}), (Pais:Country {id: 7})
CREATE (Jugador)-[:Born_In {DOB: date('2000-07-21')}]->(Pais);

MATCH (Jugador:Player {id: 7}), (Pais:Country {id: 1})
CREATE (Jugador)-[:Born_In {DOB: date('2003-06-29')}]->(Pais);

MATCH (Jugador:Player {id: 8}), (Pais:Country {id: 3})
CREATE (Jugador)-[:Born_In {DOB: date('1998-12-20')}]->(Pais);

MATCH (Jugador:Player {id: 6}), (Pais:Country {id: 7})
CREATE (Jugador)-[:Born_In {DOB: date('2000-07-21')}]->(Pais);

MATCH (Jugador:Player {id: 7}), (Pais:Country {id: 1})
CREATE (Jugador)-[:Born_In {DOB: date('2003-06-29')}]->(Pais);

MATCH (Jugador:Player {id: 8}), (Pais:Country {id: 3})
CREATE (Jugador)-[:Born_In {DOB: date('1998-12-20')}]->(Pais);
MATCH (Jugador:Player {id: 9}), (Pais:Country {id: 4})
CREATE (Jugador)-[:Born_In {DOB: date('2003-05-05')}]->(Pais);

MATCH (Jugador:Player {id: 10}), (Pais:Country {id: 8})
CREATE (Jugador)-[:Born_In {DOB: date('1987-05-22')}]->(Pais);

MATCH (Jugador:Player {id: 11}), (Pais:Country {id: 9})
CREATE (Jugador)-[:Born_In {DOB: date('2001-05-31')}]->(Pais);

MATCH (Jugador:Player {id: 9}), (Pais:Country {id: 4})
CREATE (Jugador)-[:Born_In {
    DOB: date('2003-05-05')}]->(Pais);

MATCH (Jugador:Player {id: 10}), (Pais:Country {id: 8})
CREATE (Jugador)-[:Born_In {
    DOB: date('1987-05-22')}]->(Pais);

MATCH (Jugador:Player {id: 11}), (Pais:Country {id: 9})
CREATE (Jugador)-[:Born_In {
    DOB: date('2001-05-31')}]->(Pais);

MATCH (Jugador:Player {id: 12}), (Pais:Country {id: 4})
CREATE (Jugador)-[:Born_In {
    DOB: date('1986-06-03')}]->(Pais);

MATCH (Jugador:Player {id: 13}), (Pais:Country {id: 10})
CREATE (Jugador)-[:Born_In {
    DOB: date('2004-03-13')}]->(Pais);

// Relacion entre jugador y equipo anterior

MATCH (Jugador:Player {id: 3}), (Equipo:Team {id: 3})
CREATE (Jugador)-[:Played_For {
    Start: date('2008-07-31'),
    End: date('2021-07-01'),
    Salary_Weekly: 1000000
}]->(Equipo);
MATCH (Jugador:Player {id: 6}), (Equipo:Team {id: 3})
CREATE (Jugador)-[:Played_For {
    Start: date('2019-01-01'),
    End: date('2022-06-30'),
    Salary_Weekly: 850000
}]->(Equipo);

MATCH (Jugador:Player {id: 7}), (Equipo:Team {id: 3})
CREATE (Jugador)-[:Played_For {
    Start: date('2020-07-01'),
    End: date('2023-06-30'),
    Salary_Weekly: 750000
}]->(Equipo);

//Relacion entre Equipo y pais

MATCH (Equipo:Team {id: 7}), (Pais:Country {id: 4})
CREATE (Equipo)-[:Based_In]->(Pais);

MATCH (Equipo:Team {id: 2}), (Pais:Country {id: 4})
CREATE (Equipo)-[:Based_In]->(Pais);

MATCH (Equipo:Team {id: 3}), (Pais:Country {id: 2})
CREATE (Equipo)-[:Based_In]->(Pais);

MATCH (Equipo:Team {id: 4}), (Pais:Country {id: 3})
CREATE (Equipo)-[:Based_In]->(Pais);

MATCH (Equipo:Team {id: 5}), (Pais:Country {id: 1})
CREATE (Equipo)-[:Based_In]->(Pais);

MATCH (Equipo:Team {id: 6}), (Pais:Country {id: 1})
CREATE (Equipo)-[:Based_In]->(Pais);


//Muestre la información de Deportista, la información del Equipo, la duración del Contrato, y el valor del Contrato, para todos los deportistas que tengan un contrato a partir del 2020-01-01.

MATCH (jugador:Player)-[relacion:PLAYS_FOR]->(equipo:Team)
WHERE relacion.contract_start >= date('2020-01-01')
RETURN 
    jugador.Name as Deportista,
    jugador.Position as Posición,
    equipo.Name as Equipo,
    equipo.Division as Liga,
    date(relacion.contract_start) as Inicio_Contrato,
    date(relacion.contract_end) as Fin_Contrato,
    relacion.jersey_number as Número,
    duration.between(relacion.contract_start, relacion.contract_end).years as Duración_Años;


//¿Cuáles son los deportistas de sexo masculino que están asignados a un equipo de futbol de España?

MATCH (jugador:Player)-[r:PLAYS_FOR]->(equipo:Team)-[:Based_In]->(pais:Country)
WHERE pais.id = 4 AND jugador.Gender = 'M'
RETURN 
    jugador.Name as Nombre,
    jugador.Position as Posición,
    jugador.Dominant_Foot as Pie_Dominante,
    equipo.Name as Equipo,
    equipo.Stadium as Estadio;

// ¿Cuáles son los deportistas de España y en un equipo de España?
MATCH (jugador:Player)-[:PLAYS_FOR]->(equipo:Team)-[:Based_In]->(paisEquipo:Country),
      (jugador)-[:Born_In]->(paisNacimiento:Country)
WHERE paisEquipo.id = 4 AND paisNacimiento.id = 4
RETURN 
    jugador.Name as Nombre,
    jugador.Position as Posición,
    equipo.Name as Equipo,
    equipo.Stadium as Estadio,
    paisEquipo.Name as País_Equipo;

// Cuáles son los deportistas que tienen un contrato superior a USD 1’000000?
MATCH (jugador:Player)-[relacion:Played_For]->(equipo:Team)
WHERE relacion.Salary_Weekly > 1000000
RETURN 
    jugador.Name as Nombre,
    jugador.Position as Posición,
    equipo.Name as Equipo,
    relacion.Salary_Weekly as Salario_Semanal,
    relacion.Start as Inicio_Contrato,
    relacion.End as Fin_Contrato;

// ¿Cuántos deportistas tiene cada equipo?
MATCH (jugador:Player)-[:PLAYS_FOR]->(equipo:Team)
RETURN 
    equipo.Name as Equipo,
    equipo.Division as Liga,
    count(jugador) as Numero_Jugadores
ORDER BY Numero_Jugadores DESC;


// distribución de nacionalidades por liga

MATCH (jugador:Player)-[:Born_In]->(paisNacimiento:Country),
      (jugador)-[:PLAYS_FOR]->(equipo:Team)
WITH equipo.Division as Liga, 
     collect(DISTINCT paisNacimiento.Name) as Nacionalidades,
     count(DISTINCT paisNacimiento.Name) as Num_Nacionalidades
RETURN 
    Liga,
    Num_Nacionalidades,
    Nacionalidades as Lista_Nacionalidades
ORDER BY Num_Nacionalidades DESC;


//jugadores que juegan en países diferentes a su país de nacimiento
MATCH (jugador:Player)-[:PLAYS_FOR]->(equipo:Team)-[:Based_In]->(paisEquipo:Country),
      (jugador)-[:Born_In]->(paisNacimiento:Country)
WHERE paisEquipo.id <> paisNacimiento.id
RETURN 
    jugador.Name as Jugador,
    paisNacimiento.Name as País_Origen,
    paisEquipo.Name as País_Actual,
    equipo.Name as Equipo,
    paisNacimiento.Languague as Idioma_Natal,
    paisEquipo.Languague as Idioma_Actual;

//Distribución de jugadores por pie dominante en cada equipo
MATCH (j:Player)-[:PLAYS_FOR]->(e:Team)
RETURN 
    e.Name as Equipo,
    count(j) as Total_Jugadores,
    count(CASE WHEN j.Dominant_Foot = 'Right' THEN 1 END) as Diestros,
    count(CASE WHEN j.Dominant_Foot = 'Left' THEN 1 END) as Zurdos,
    round(100.0 * count(CASE WHEN j.Dominant_Foot = 'Left' THEN 1 END) / count(j)) as Porcentaje_Zurdos;


    //Distribución de posiciones por equipo
MATCH (j:Player)-[:PLAYS_FOR]->(e:Team)
WITH e.Name as Equipo, 
     collect(DISTINCT j.Position) as Posiciones,
     count(j) as Total_Jugadores,
     collect({posicion: j.Position, jugador: j.Name}) as Detalles
RETURN 
    Equipo,
    Total_Jugadores,
    Posiciones,
    [pos in Posiciones | {
        posicion: pos,
        jugadores: [d in Detalles WHERE d.posicion = pos | d.jugador]
    }] as Distribución;


//Análisis de Edad por Equipo
MATCH (j:Player)-[n:Born_In]->(p:Country),
      (j)-[:PLAYS_FOR]->(e:Team)
WITH e, j, n.DOB as fechaNacimiento,
     duration.between(n.DOB, date()).years as edad
RETURN 
    e.Name as Equipo,
    round(avg(edad)) as Edad_Promedio,
    min(edad) as Jugador_Más_Joven,
    max(edad) as Jugador_Más_Veterano,
    collect({nombre: j.Name, edad: edad}) as Lista_Jugadores
ORDER BY Edad_Promedio DESC;