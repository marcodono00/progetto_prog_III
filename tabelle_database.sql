create database progetto_programmazione;

use progetto_programmazione;

create table sensore(
temperatura int,
livello_inquinamento int,
numero_veicoli int,
giorno_attuale int,
mese_attuale int,
via char(40),
constraint primary key(giorno_attuale,mese_attuale,via) 
);

create index citta_ibfk_1 on sensore (numero_veicoli,via);


create table citta(
num_automobili int,
via_s char(40),
via_t char(40),
constraint foreign key c_k1(num_automobili,via_s) references sensore(numero_veicoli,via)
);


create table automobile(
num_targa char(20),
infrazione int,
constraint primary key (num_targa)
);

create index polizia_ibfk_3 on automobile(infrazione);

create table polizia(
giorno_infrazione int,
mese_infrazione int,
via_infrazione char(40),
targa_veicolo char(20),
infrazione int,
constraint foreign key f_k1(targa_veicolo) references automobile(num_targa),
constraint foreign key f_k2(giorno_infrazione,mese_infrazione,via_infrazione) references sensore(giorno_attuale,mese_attuale,via),
constraint foreign key f_k3(infrazione) references automobile(infrazione)
);

create table inventory(
whel timestamp,
n1 int,
n2 int,
n3 int
)



