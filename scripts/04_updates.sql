-- Atualizar data de devolução
UPDATE emprestimos
SET data_devolucao = SYSDATE
WHERE id_emprestimo = 1;

-- Deletar um usuário (só se não tiver empréstimos ativos)
DELETE FROM usuarios WHERE id_usuario = 2;
