-- ============================================================
--   Nom de la base   :  BASEASSOCIATIONS
--   Nom de SGBD      :  ORACLE Version 7.0
--   Date de creation :  09/11/2018  09:37
-- ============================================================

drop table PERSONNES cascade constraints;
drop table PARTICIPER cascade constraints;
drop table EVENEMENTS cascade constraints;
drop table SOURCES_FINANCEMENT cascade constraints;
drop table ADHERENTS cascade constraints;
drop table FINANCER cascade constraints;
drop table COMMENTER cascade constraints;
drop table COTISER cascade constraints;
drop table ASSOCIATIONS cascade constraints;
drop table NEWS cascade constraints;
drop table RESPONSABLES cascade constraints;
drop table GERER cascade constraints;

drop sequence ID_PERS_SEQ;
drop sequence ID_EVENT_SEQ;
drop sequence ID_FIN_SEQ;
-- ============================================================
--   Table : PERSONNES
-- ============================================================
create table PERSONNES
(
    ID_PERS             NUMBER(5)       not null ,
    NOM_PERS            VARCHAR2(40)        not null                ,
    PRENOM_PERS         VARCHAR2(40)        not null                ,
    constraint pk_pers primary key (ID_PERS)
);

create table PARTICIPER
(
    ID_EVENT            NUMBER(5)       not null                ,
    ID_PERS             NUMBER(5)       not null                ,
    TARIF               NUMBER(5)       DEFAULT 0               ,
    COMMENTAIRE_EVENT   VARCHAR2(280)                               ,
    NOTE                NUMBER(1)                               ,
    constraint pk_part primary key (ID_EVENT, ID_PERS)
);

create table EVENEMENTS
(
    ID_EVENT            NUMBER(5)       not null ,
    TITRE_EVENT         VARCHAR2(100)       not null                ,
    DESCRIPTION         VARCHAR2(1000)      not null                ,
    DATE_CREATION       DATE            not null                ,
    COUT                NUMBER(6)       DEFAULT 0               ,
    LIEU                VARCHAR2(1000)      not null                ,
    NB_PLACE            NUMBER(6)       DEFAULT 0               ,
    DATE_DEBUT          DATE            not null                ,
    DATE_FIN            DATE            not null                ,
    FREQUENCE           VARCHAR2(12) check (FREQUENCE in ('QUOTIDIEN', 'HEBDOMADAIRE', 'MENSUEL', 'ANNUEL')),
    NOM_ASSO            VARCHAR2(40)        not null                ,
    LOGIN_ORGANISATEUR  VARCHAR2(40)        not null                ,
    constraint pk_event primary key (ID_EVENT)
);

create table SOURCES_FINANCEMENT
(
    ID_FIN              NUMBER(5)       not null ,
    TYPE                VARCHAR2(10) check (type in ('ENTREPRISE', 'PRIVEE', 'ETAT', 'ECOLE')) not null,
    NOM_FIN             VARCHAR2(100)       DEFAULT 'Anonyme'       ,
    constraint pk_sfin primary key (ID_FIN)
);

create table ADHERENTS
(
    LOGIN_ADHERENT     VARCHAR2(40)         not null                ,
    ADRESSE_MAIL        VARCHAR2(100)       not null                ,
    FILIERE             VARCHAR2(17) check (FILIERE in ('INFORMATIQUE', 'ELECTRONIQUE', 'TELECOMMUNICATION', 'MATMECA', 'RSI', 'SEE'))  not null ,
    PROMOTION           INT(4)              not null      ,
    MDP                 VARCHAR2(100)       not null                ,
    ID_PERS             NUMBER(5)           not null                ,
    constraint pk_adh primary key (LOGIN_ADHERENT)
);

create table FINANCER
(
    ID_FIN              NUMBER(5)       not null                ,
    NOM_ASSO            VARCHAR2(40)        not null                ,
    SOMME               NUMBER(6)       DEFAULT 0               ,
    constraint pk_fin primary key (ID_FIN, NOM_ASSO)
);

create table COMMENTER
(
  ID_NEWS               NUMBER(5)       not null                ,
  LOGIN_ADHERENT        VARCHAR2(40)        not null                ,
  COMMENTAIRE_NEWS      VARCHAR2(280)                               ,
  constraint pk_com primary key (ID_NEWS)
);

create table COTISER
(
  LOGIN_ADHERENT        VARCHAR2(40)        not null                ,
  NOM_ASSO              VARCHAR2(40)        not null                ,
  DATE_INSCRIPTION      DATE            not null                ,
  constraint pk_cot primary key (LOGIN_ADHERENT, NOM_ASSO)
);

create table ASSOCIATIONS
(
  NOM_ASSO              VARCHAR2(40)       not null                ,
  OBJECTIF              VARCHAR2(280)      not null                ,
  MONTANT_COTISATION    NUMBER(6)      default 0               ,
  constraint pk_asso primary key (NOM_ASSO)
);

create table NEWS
(
  ID_NEWS               NUMBER(5)      not null               ,
  TITRE_NEWS            VARCHAR2(40)       not null               ,
  TEXTE                 VARCHAR2(1000)     not null               ,
  DATE_CREATION         DATE           not null               ,
  NOM_ASSO              VARCHAR2(40)       not null               ,
  constraint pk_news primary key (ID_NEWS)
);

create table RESPONSABLES
(
  NOM_ASSO              VARCHAR2(40)      not null                ,
  FONCTION              VARCHAR2(60)      not null                ,
  LOGIN_ADHERENT        VARCHAR2(40)      not null                ,
  constraint pk_respo primary key (NOM_ASSO, FONCTION)
);

create table GERER
(
  NOM_ASSO              VARCHAR2(40)      not null                ,
  FONCTION              VARCHAR2(60)      not null                ,
  constraint pk_ger primary key (NOM_ASSO, FONCTION)
);


create sequence ID_PERS_SEQ
  minvalue 1
  maxvalue 99999
  start with 1
  increment by 1
  cache 20;

create sequence ID_EVENT_SEQ
  minvalue 1
  maxvalue 99999
  start with 1
  increment by 1
  cache 20;

create sequence ID_FIN_SEQ
  minvalue 1
  maxvalue 99999
  start with 1
  increment by 1
  cache 20;
