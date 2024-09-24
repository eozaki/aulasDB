drop table if exists Inscricao ;
drop table if exists newname_-394593963 ;
drop table if exists Aluno ;
drop table if exists Disciplina ;
drop table if exists Licenciatura ;
drop table if exists Consulta ;
drop table if exists Utente ;
drop table if exists Medico ;
drop table if exists Especialidade ;
drop table if exists MedicoEspecialidade ;
 
create table Inscricao
(
   Aluno_numero_   Integer   not null,
   Disciplina_Disciplina_ID_   integer   not null,
   nota   Integer   null,
 
   constraint PK_Inscricao primary key (Aluno_numero_, Disciplina_Disciplina_ID_)
);
 
create table newname_-394593963
(
   Medico_numFuncionario_   Integer   not null,
   Especialidade_CodEspecialidade_   Integer   not null,
 
   constraint PK_newname_-394593963 primary key (Medico_numFuncionario_, Especialidade_CodEspecialidade_)
);
 
create table Aluno
(
   nome   text   null,
   numero   Integer   not null,
   morada   text   null,
 
   constraint PK_Aluno primary key (numero)
);
 
create table Disciplina
(
   Licenciatura_Licenciatura_ID   integer   not null,
   Disciplina_ID   integer   not null,
   anoLetivo   Integer   null,
   nome   text   null,
   sigla   text   null,
 
   constraint PK_Disciplina primary key (Disciplina_ID)
);
 
create table Licenciatura
(
   Aluno_numero   Integer   not null,
   Licenciatura_ID   integer   not null,
   nome   text   null,
   designacao   text   null,
 
   constraint PK_Licenciatura primary key (Licenciatura_ID)
);
 
create table Consulta
(
   Utente_numPaciente   Integer   not null,
   Medico_numFuncionario   Integer   not null,
   Especialidade_CodEspecialidade   Integer   not null,
   NumeroCons   Integer   not null,
   Data   date   null,
   Valor   decimal(4,2)   null,
 
   constraint PK_Consulta primary key (NumeroCons)
);
 
create table Utente
(
   numPaciente   Integer   not null,
   nome   varchar(100)   null,
   morada   text   null,
 
   constraint PK_Utente primary key (numPaciente)
);
 
create table Medico
(
   numFuncionario   Integer   not null,
   nome   varchar(100)   null,
   morada   text   null,
 
   constraint PK_Medico primary key (numFuncionario)
);
 
create table Especialidade
(
   CodEspecialidade   Integer   not null,
   designacao   varchar(100)   null,
 
   constraint PK_Especialidade primary key (CodEspecialidade)
);
 
create table MedicoEspecialidade
(
   MedicoEspecialidade_ID   integer   not null,
 
   constraint PK_MedicoEspecialidade primary key (MedicoEspecialidade_ID)
);
 
alter table Inscricao
   add constraint FK_Aluno_Inscricao_Disciplina_ foreign key (Aluno_numero_)
   references Aluno(numero)
   on delete cascade
   on update cascade
; 
alter table Inscricao
   add constraint FK_Disciplina_Inscricao_Aluno_ foreign key (Disciplina_Disciplina_ID_)
   references Disciplina(Disciplina_ID)
   on delete cascade
   on update cascade
;
 
alter table newname_-394593963
   add constraint FK_Medico_newname_-394593963_Especialidade_ foreign key (Medico_numFuncionario_)
   references Medico(numFuncionario)
   on delete cascade
   on update cascade
; 
alter table newname_-394593963
   add constraint FK_Especialidade_newname_-394593963_Medico_ foreign key (Especialidade_CodEspecialidade_)
   references Especialidade(CodEspecialidade)
   on delete cascade
   on update cascade
;
 
 
alter table Disciplina
   add constraint FK_Disciplina_Curriculo_Licenciatura foreign key (Licenciatura_Licenciatura_ID)
   references Licenciatura(Licenciatura_ID)
   on delete restrict
   on update cascade
;
 
alter table Licenciatura
   add constraint FK_Licenciatura_Matricula-se_Aluno foreign key (Aluno_numero)
   references Aluno(numero)
   on delete restrict
   on update cascade
;
 
alter table Consulta
   add constraint FK_Consulta_PacienteConsulta_Utente foreign key (Utente_numPaciente)
   references Utente(numPaciente)
   on delete restrict
   on update cascade
; 
alter table Consulta
   add constraint FK_Consulta_noname_Medico foreign key (Medico_numFuncionario)
   references Medico(numFuncionario)
   on delete restrict
   on update cascade
; 
alter table Consulta
   add constraint FK_Consulta_EspecialidadeConsulta_Especialidade foreign key (Especialidade_CodEspecialidade)
   references Especialidade(CodEspecialidade)
   on delete restrict
   on update cascade
;
 
 
 
 
 
