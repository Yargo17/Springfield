CREATE TABLE departamento (
id_depto NUMBER NOT NULL, --id do departamento
nome_Depto VARCHAR2(100) NOT NULL --nome do departamento
);

CREATE TABLE empregado (
id_emp NUMBER NOT NULL, --id do empregado
cidade_emp  VARCHAR2(100) NOT NULL, --cidade do empregado
dtacontrat_emp DATE NOT NULL, --data do contrato
dtanasc_emp DATE NOT NULL, --data de nascimento
nome_emp VARCHAR2(100) NOT NULL, --nome do empregado
id_depto NUMBER NOT NULL, --id do departamento
sexo_emp CHAR NOT NULL --sexo do empregado
);

CREATE TABLE salario (
dtapgto_sal DATE NOT NULL, --data de pagamento
id_emp NUMBER NOT NULL, --id do empregado
salariobase_sal NUMBER NOT NULL, --salario base
perc_sal NUMBER NULL --porcentagem do salario
);

ALTER TABLE empregado ADD (PRIMARY KEY (id_emp)); --id do empregado como chave primaria no empregado
ALTER TABLE empregado ADD (FOREIGN KEY (id_depto) REFERENCES departamento); --id do departamento no empregado como estrangeira, usando como parametro o do departamento
ALTER TABLE departamento ADD (PRIMARY KEY (id_depto)); --id do departamento como chave primaria
ALTER TABLE salario ADD (PRIMARY KEY (dtapgto_sal)); --data de pagamento como chave primario no salario
ALTER TABLE salario ADD (FOREIGN KEY (id_emp) REFERENCES empregado); --id do empregado como chave estrangeira, usando como parametro o do empregado