create schema LineAerea;

create table LineAerea.catBarrio
(
	id_bar smallint primary key,
	nom_bar varchar(15) not null
);

create table LieAerea.cat_TipoTrabajo
(
	id_tiptra smallint primary key,
    desc_tiptra varchar(10) not null
);

create table LineAerea.cat_Puestos
(
	id_pue smallint primary key,
    nom_pue varchar(15) not null
);

create table LienAerea.cat_Trabajador
(
	id_emp smallint primary key,
	nom_emp varchar (20) not null,
	apa_emp varchar (15) not null,
	ama_emp varchar (15) not null,
	sex_emp varchar (1) not null,
	fna_emp date not null,
	id_bar_emp  smallint not null,
	id_pue_emp  smallint not null,
	id_tiptra_emp  smallint not null,
	constraint fk_barrio foreign key (id_bar_emp)
	references cat_Barrio(id_bar)
	constraint fk_puesto foreign key (id_pue_emp )
	references cat_Puestos(id_pue)
	constraint fk_triptra foreign key (id_tiptra_emp)
	references cat_TipoTrabajo(id_tiptra)
	
	
);

create table LineAerea.Nomina
(
	is_emp_nom smallint FK not null,
	cantidad_trabajada_nom int not null,
	faltas_nom int not null
);

create table LineAerea.cat_Pagos
(
	id_pago smallint primary key,
	tipo_pago varchar (5) not null,
	val_pago decimal not null
);

create table LineAerea.cat_Impuestos
(
	id_imp smallint primary key,
	nom_imp varchar (5) not null,
	val_por_desc decimal not null
);

