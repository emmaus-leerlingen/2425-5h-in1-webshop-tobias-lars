--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  voorraad NUMERIC(10),
  verzendkosten NUMERIC(10),
  productnummer NUMMERIC(10),
  catogories_id INTEGER,
  beoordeling_id INTEGER,
  products_id INTEGER,
  seizoenen_id INTEGER
);

CREATE TABLE catogories (
  catogories_id INTEGER,
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE seizoenen (
  seizoenen_id INTEGER,
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE beoordeling (
  beoordeling_id INTEGER,
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE geschiktheid (
  products_id INTEGER,   
  seizoenen_id INTEGER,
  PRIMARY KEY (products_id, seizoenen_id), 
  FOREIGN KEY (products_id) REFERENCES products(products_id),
  FOREIGN KEY (seizoenen_id) REFERENCES seizoenen(seizoenen_id)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (1, 'Hoodie rood', 'Rode royalistiq hoodie, groot logo in het midden.', '816905633-0', 21, 20, 3, 134, 1, 1);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (2, 'Hoodie blauw', 'Blauwe royalistiq hoodie, groot logo in het midden.', '077030122-3', 21, 26, 3, 176, 1, 2);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (3, 'Hoodie zwart', 'zwarte royalistiq hoodie, groot logo in het midden.', '445924201-X', 21, 8, 3, 124, 1, 2);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (4, 'T-shirt rood', 'rood royalistiq t-shirt, goede kwaliteit, logo in het midden.', '693155505-7', 14, 30, 3, 592, 2, 1);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id,  beoordeling_id) values (5, 'T-shirt blauw', 'blauw royalistiq t-shirt, goede kwaliteit, logo in het midden.', '686928463-6', 14, 22, 3, 578, 2, 1);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (6, 'T-shirt zwart', 'zwart royalistiq t-shirt, goede kwaliteit, logo in het midden.', '492662523-7', 14, 32, 3, 583, 2, 1);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (7, 'Pet rood', 'rode royalistiq pet, zit comfortabel, logo in het midden.', '003832762-4', 9, 8, 3, 266, 3, 1);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (8, 'Pet blauw', 'blauwe royalistiq pet, zit comfortabel, logo in het midden.', '578834325-2', 9, 30, 3, 229, 3, 3);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (9, 'Pet zwart', 'zwarte royalistiq pet, zit comfortabel, logo in het midden.', '5674821169-5', 9, 21, 3, 255, 3, 2);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (10 ,'Het grote royalistiq boek', 'het al zo grote royalistiq boek over de youtube carrière van royalistiq .', '882374623-1', 19.99, 27, 3, 624, 4, 2);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (11, 'Etui', 'royalistiq etui, veel ruimte, handig voor op school.', '849275978-6', 8.50, 42, 3, 488, 4, 4);
insert into products (products_id, name, description, code, price, voorraad, verzendkosten, productnummer, catogories_id, beoordeling_id) values (12, 'Exlusive bandana', 'de legendarische OG royalistiq bandana, gedragen door royalistiq in het royalistiq live-event', '654890345-9', 50, 3, 3, 738, 4, 1);

insert into catogories (catogories_id, name) values (1, 'Hoodies');
insert into catogories (catogories_id, name) values (2, 'T-shirts');
insert into catogories (catogories_id, name) values (3, 'petten');
insert into catogories (catogories_id, name) values (4, 'accessoires');

insert into beoordeling (beoordeling_id, name) values (1, 'geweldig');
insert into beoordeling (beoordeling_id, name) values (2, 'prima');
insert into beoordeling (beoordeling_id, name) values (3, 'matig');
insert into beoordeling (beoordeling_id, name) values (4, 'slecht');

insert into seizoenen (seizoenen_id, name) values (1, 'zomer');
insert into seizoenen (seizoenen_id, name) values (2, 'herfst');
insert into seizoenen (seizoenen_id, name) values (3, 'winter');
insert into seizoenen (seizoenen_id, name) values (4, 'lente');

insert into geschiktheid (products_id, seizoenen_id) values (1,2);
insert into geschiktheid (products_id, seizoenen_id) values (1,3);
insert into geschiktheid (products_id, seizoenen_id) values (2,2);
insert into geschiktheid (products_id, seizoenen_id) values (2,3);
insert into geschiktheid (products_id, seizoenen_id) values (3,2);
insert into geschiktheid (products_id, seizoenen_id) values (3,3);
insert into geschiktheid (products_id, seizoenen_id) values (4,1);
insert into geschiktheid (products_id, seizoenen_id) values (4,4);
insert into geschiktheid (products_id, seizoenen_id) values (5,1);
insert into geschiktheid (products_id, seizoenen_id) values (5,4);
insert into geschiktheid (products_id, seizoenen_id) values (6,1);
insert into geschiktheid (products_id, seizoenen_id) values (6,4);
insert into geschiktheid (products_id, seizoenen_id) values (7,1);
insert into geschiktheid (products_id, seizoenen_id) values (7,4);
insert into geschiktheid (products_id, seizoenen_id) values (8,1);
insert into geschiktheid (products_id, seizoenen_id) values (8,4);
insert into geschiktheid (products_id, seizoenen_id) values (9,1);
insert into geschiktheid (products_id, seizoenen_id) values (9,4);
insert into geschiktheid (products_id, seizoenen_id) values (10,1);
insert into geschiktheid (products_id, seizoenen_id) values (10,2);
insert into geschiktheid (products_id, seizoenen_id) values (10,3);
insert into geschiktheid (products_id, seizoenen_id) values (10,4);
insert into geschiktheid (products_id, seizoenen_id) values (11,1);
insert into geschiktheid (products_id, seizoenen_id) values (11,2);
insert into geschiktheid (products_id, seizoenen_id) values (11,3);
insert into geschiktheid (products_id, seizoenen_id) values (11,4);
insert into geschiktheid (products_id, seizoenen_id) values (12,1);
insert into geschiktheid (products_id, seizoenen_id) values (12,2);
insert into geschiktheid (products_id, seizoenen_id) values (12,3);
insert into geschiktheid (products_id, seizoenen_id) values (12,4);
