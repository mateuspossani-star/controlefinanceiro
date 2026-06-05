Sistema de Controle Financeiro para Pequenos Negócios
Descrição

Este projeto foi desenvolvido como atividade da disciplina Projeto Integrador de Tecnologia da Informação III, com o objetivo de aplicar conceitos de modelagem e manipulação de banco de dados utilizando SQL, além do uso de controle de versão com Git e GitHub.

O sistema permite o gerenciamento financeiro de pequenos negócios, possibilitando o cadastro de usuários, categorias, receitas e despesas, além da realização de consultas para acompanhamento da situação financeira.

Objetivos
Registrar receitas e despesas.
Organizar movimentações financeiras por categorias.
Controlar entradas e saídas de recursos.
Gerar consultas para análise financeira.
Aplicar conceitos de banco de dados relacionais.
Utilizar Git e GitHub para versionamento do projeto.
Tecnologias Utilizadas
MySQL 8.0
MySQL Workbench
SQL
Git
GitHub
Estrutura do Banco de Dados
Tabela: usuarios
Campo	Tipo
id_usuario	INT (PK)
nome	VARCHAR(100)
email	VARCHAR(100)
senha	VARCHAR(255)
Tabela: categorias
Campo	Tipo
id_categoria	INT (PK)
nome_categoria	VARCHAR(100)
tipo	ENUM('Receita','Despesa')
Tabela: receitas
Campo	Tipo
id_receita	INT (PK)
descricao	VARCHAR(100)
valor	DECIMAL(10,2)
data_receita	DATE
id_usuario	INT (FK)
id_categoria	INT (FK)
Tabela: despesas
Campo	Tipo
id_despesa	INT (PK)
descricao	VARCHAR(100)
valor	DECIMAL(10,2)
data_despesa	DATE
id_usuario	INT (FK)
id_categoria	INT (FK)
Modelo Relacional

USUÁRIOS (1) → (N) RECEITAS

USUÁRIOS (1) → (N) DESPESAS

CATEGORIAS (1) → (N) RECEITAS

CATEGORIAS (1) → (N) DESPESAS

Como Executar o Projeto
1. Clonar o repositório
git clonehttps://github.com/mateuspossani-star/controlefinanceiro
2. Abrir o MySQL Workbench

Conecte-se ao servidor MySQL.

3. Executar o script SQL

Abra o arquivo:

script.sql

Execute todo o conteúdo utilizando:

Ctrl + Shift + Enter

ou clicando no botão ⚡ Execute.

Consultas Disponíveis
Listar usuários
SELECT * FROM usuarios;
Listar categorias
SELECT * FROM categorias;
Listar receitas
SELECT * FROM receitas;
Listar despesas
SELECT * FROM despesas;
Total de receitas
SELECT SUM(valor) AS total_receitas
FROM receitas;
Total de despesas
SELECT SUM(valor) AS total_despesas
FROM despesas;
Saldo financeiro
SELECT
(
    SELECT SUM(valor) FROM receitas
)
-
(
    SELECT SUM(valor) FROM despesas
)
AS saldo;
Controle de Versão

O projeto utiliza Git para gerenciamento das alterações realizadas durante o desenvolvimento.

Exemplos de commits
Criação da estrutura inicial do banco de dados
Adicionadas tabelas de receitas e despesas
Inserção de dados de exemplo
Implementação das consultas financeiras
Atualização da documentação do projeto
Versão final do sistema
Autor

Mateus Lucas Possani dos Santos

Curso: Tecnologia da Informação

Disciplina: Projeto Integrador de Tecnologia da Informação III

Semestre: 2026.1

Licença

Projeto desenvolvido exclusivamente para fins acadêmicos.
