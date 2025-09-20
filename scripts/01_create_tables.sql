-- Criando tabelas do sistema de biblioteca

CREATE TABLE autores (
    id_autor NUMBER PRIMARY KEY,
    nome     VARCHAR2(100) NOT NULL,
    nacionalidade VARCHAR2(50)
);

CREATE TABLE livros (
    id_livro NUMBER PRIMARY KEY,
    titulo   VARCHAR2(150) NOT NULL,
    ano_publicacao NUMBER(4),
    id_autor NUMBER,
    CONSTRAINT fk_autor FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

CREATE TABLE usuarios (
    id_usuario NUMBER PRIMARY KEY,
    nome       VARCHAR2(100) NOT NULL,
    email      VARCHAR2(100) UNIQUE
);

CREATE TABLE emprestimos (
    id_emprestimo NUMBER PRIMARY KEY,
    id_usuario NUMBER,
    id_livro   NUMBER,
    data_emprestimo DATE DEFAULT SYSDATE,
    data_devolucao  DATE,
    CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    CONSTRAINT fk_livro FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);
