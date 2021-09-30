/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     30/09/2021 20:26:23                          */
/*==============================================================*/


/*==============================================================*/
/* Table: motorista                                             */
/*==============================================================*/
create table motorista
(
   nome                 text not null,
   id                   bigint not null,
   vei_id               bigint,
   categoriaCnh         text not null,
   status               boolean not null,
   email                text not null,
   senha                text not null,
   telefone             text,
   dataNascimento       date not null,
   cnh                  text not null,
   validadeCnh          date not null
);

alter table motorista
   add primary key (id);

/*==============================================================*/
/* Table: pagamento                                             */
/*==============================================================*/
create table pagamento
(
   id                   bigint not null,
   valor                double not null,
   formaPagamento       text not null
);

alter table pagamento
   add primary key (id);

/*==============================================================*/
/* Table: solicitacao                                           */
/*==============================================================*/
create table solicitacao
(
   id                   bigint not null,
   categoriaSolicitacao text not null,
   data                 datetime not null,
   trajeto              text not null,
   valor                double not null,
   idMotorista          bigint not null,
   idUsuario            bigint not null,
   idPagamento          bigint not null
);

alter table solicitacao
   add primary key (id);

/*==============================================================*/
/* Table: usuario                                               */
/*==============================================================*/
create table usuario
(
   categoriaSolicitacao text not null,
   data                 datetime not null,
   trajeto              text not null,
   valor                double not null,
   id                   bigint not null
);

alter table usuario
   add primary key (id);

/*==============================================================*/
/* Table: veiculo                                               */
/*==============================================================*/
create table veiculo
(
   id                   bigint not null,
   marca                text not null,
   modelo               text not null,
   cor                  text not null,
   renavam              text not null,
   placa                text not null,
   chassi               text not null,
   ano                  bigint not null,
   qtdeAssentos         int not null,
   categoriaVeiculo     text not null,
   status               boolean not null,
   idMotorista          bigint
);

alter table veiculo
   add primary key (id);

