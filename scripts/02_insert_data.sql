-- Inserindo dados iniciais

-- Autores
INSERT INTO autores VALUES (1, 'Machado de Assis', 'Brasileiro');
INSERT INTO autores VALUES (2, 'George Orwell', 'Britânico');

-- Livros
INSERT INTO livros VALUES (1, 'Dom Casmurro', 1899, 1);
INSERT INTO livros VALUES (2, '1984', 1949, 2);

-- Usuários
INSERT INTO usuarios VALUES (1, 'Ana Silva', 'ana@email.com');
INSERT INTO usuarios VALUES (2, 'Carlos Souza', 'carlos@email.com');

-- Empréstimos
INSERT INTO emprestimos VALUES (1, 1, 2, SYSDATE, NULL);
