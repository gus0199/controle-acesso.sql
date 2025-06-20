-- Seleciona o banco
USE coma_bem;

-- Criação de usuário ADMINISTRADOR (acesso total)
CREATE USER 'admin_comabem'@'localhost' IDENTIFIED BY 'SenhaAdmin123';
GRANT ALL PRIVILEGES ON coma_bem.* TO 'admin_comabem'@'localhost';

-- Criação de usuário OPERADOR (pode inserir e consultar)
CREATE USER 'operador'@'localhost' IDENTIFIED BY 'SenhaOperador456';
GRANT SELECT, INSERT ON coma_bem.* TO 'operador'@'localhost';

-- Criação de usuário CLIENTE (somente leitura da tabela Produto)
CREATE USER 'cliente'@'localhost' IDENTIFIED BY 'SenhaCliente789';
GRANT SELECT ON coma_bem.Produto TO 'cliente'@'localhost';

-- Aplica as alterações no MySQL
FLUSH PRIVILEGES;
