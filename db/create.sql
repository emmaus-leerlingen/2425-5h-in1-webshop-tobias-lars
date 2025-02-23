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
  catogories_id INTEGER,
  beoordeling_id INTEGER
);

CREATE TABLE catogories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE seizoenen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE products_seizoenen (
   PRIMARY KEY (products_id, seizoenen_id), 
   FOREIGN KEY (seizoenen_id) REFERENCES products(products_id),
   FOREIGN KEY (products_id) REFERENCES seizoenen(seizoenen_id),
   products_id INTEGER,   
   seizoenen_id INTEGER
);

CREATE TABLE beoordeling (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('Hoodie rood', 'Rode royalistiq hoodie, groot logo in het midden.', '816905633-0', 21, 20, 1, 1);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('Hoodie blauw', 'Blauwe royalistiq hoodie, groot logo in het midden.', '077030122-3', 21, 26, 1, 2);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('Hoodie zwart', 'zwarte royalistiq hoodie, groot logo in het midden.', '445924201-X', 21, 8, 1, 2);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('T-shirt rood', 'rood royalistiq t-shirt, goede kwaliteit, logo in het midden.', '693155505-7', 14, 30, 2, 1);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('T-shirt blauw', 'blauw royalistiq t-shirt, goede kwaliteit, logo in het midden.', '686928463-6', 14, 22, 2, 1);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('T-shirt zwart', 'zwart royalistiq t-shirt, goede kwaliteit, logo in het midden.', '492662523-7', 14, 32, 2, 1);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('Pet rood', 'rode royalistiq pet, zit comfortabel, logo in het midden.', '003832762-4', 9, 8, 3, 1);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('Pet blauw', 'blauwe royalistiq pet, zit comfortabel, logo in het midden.', '578834325-2', 9, 30, 3, 3);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('Pet zwart', 'zwarte royalistiq pet, zit comfortabel, logo in het midden.', '5674821169-5', 9, 21, 3, 2);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('Het grote royalistiq boek', 'het al zo grote royalistiq boek over de youtube carrière van royalistiq .', '882374623-1', 19.99, 27, 4, 2);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('Etui', 'royalistiq etui, veel ruimte, handig voor op school.', '849275978-6', 8.50, 42, 4, 4);
insert into products (name, description, code, price, voorraad, catogories_id, beoordeling_id) values ('Exlusive bandana', 'de legendarische OG royalistiq bandana, gedragen door royalistiq in het royalistiq live-event', '654890345-9', 50, 3, 4, 1);

insert into catogories (name) values ('Hoodies');
insert into catogories (name) values ('T-shirts');
insert into catogories (name) values ('petten');
insert into catogories (name) values ('accessoires');

insert into seizoenen (name) values ('zomer');
insert into seizoenen (name) values ('herfst');
insert into seizoenen (name) values ('winter');
insert into seizoenen (name) values ('lente');

insert into products_seizoenen (products_id, seizoenen_id) values ('prima');
insert into products_seizoenen (products_id, seizoenen_id) values ('matig');
insert into products_seizoenen (products_id, seizoenen_id) values ('slecht');

insert into beoordeling (name) values ('geweldig');
insert into beoordeling (name) values ('prima');
insert into beoordeling (name) values ('matig');
insert into beoordeling (name) values ('slecht');
