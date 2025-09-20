-- Consultas principais

-- Listar todos os livros com seus autores
SELECT l.titulo, a.nome AS autor
FROM livros l
JOIN autores a ON l.id_autor = a.id_autor;

-- Usuários que pegaram livros emprestados
SELECT u.nome, l.titulo, e.data_emprestimo
FROM emprestimos e
JOIN usuarios u ON e.id_usuario = u.id_usuario
JOIN livros l ON e.id_livro = l.id_livro;

-- Livros ainda não devolvidos
SELECT l.titulo, u.nome
FROM emprestimos e
JOIN livros l ON e.id_livro = l.id_livro
JOIN usuarios u ON e.id_usuario = u.id_usuario
WHERE e.data_devolucao IS NULL;
