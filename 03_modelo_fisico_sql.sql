CREATE TABLE Carrinho
(
 idCarrinho INT NOT NULL AUTO_INCREMENT,  
 idProduto INT,  
 valorTotal FLOAT,
 PRIMARY KEY(idCarrinho)
);

CREATE TABLE Produtos
(
 valorUnitario FLOAT,  
 idProduto INT NOT NULL AUTO_INCREMENT,  
 descricaoProduto CHAR(150),  
 quantidadeProduto INT,
 PRIMARY KEY (idProduto)
);

CREATE TABLE Pedido
(
 horaPedido TIME,  
 codigoPedido INT NOT NULL AUTO_INCREMENT, 
 idProdutos INT,  
 idPagamento INT,
 PRIMARY KEY (codigoPedido)
);

CREATE TABLE Pagamento
(
 idPagamento INT NOT NULL AUTO_INCREMENT, 
 trocoReceber FLOAT,  
 valorPagamento FLOAT,  
 formaPagamento VARCHAR(7),  
 PRIMARY KEY(idPagamento)
);

CREATE TABLE Endereco
(
 IdEndereco INT NOT NULL AUTO_INCREMENT,
 descCEP INT,  
 descNumero INT,  
 descRua VARCHAR(100),
 PRIMARY KEY (IdEndereco)
);

CREATE TABLE Usuario
(
 idUsuario INT NOT NULL AUTO_INCREMENT,  
 Nome CHAR(100),  
 Email VARCHAR(100), 
 Senha VARCHAR(100), 
 idCarrinho INT,
 CPF BIGINT (11),
 PRIMARY KEY (idUsuario)
);

CREATE TABLE Sessao
(
 idSessao INT NOT NULL AUTO_INCREMENT, 
 horaSessao TIME,
 PRIMARY KEY(idSessao)
);

CREATE TABLE possui
(
 idCarrinho INT,  
 idProduto INT
);

CREATE TABLE entregue
(
 codigoPedido INT 
);

CREATE TABLE login
(
 idSessao INT,  
 idUsuario INT,
 idLogin INT NOT NULL AUTO_INCREMENT,
 PRIMARY KEY(idLogin)
);

CREATE TABLE salva
(
 idSessao INT,  
 idPagamento INT,  
 IdEndereco INT
);

ALTER TABLE Pedido ADD FOREIGN KEY(idProdutos) REFERENCES Produtos (idProduto);
ALTER TABLE Pedido ADD FOREIGN KEY(idPagamento) REFERENCES Pagamento (idPagamento);
ALTER TABLE Usuario ADD FOREIGN KEY(idCarrinho) REFERENCES Carrinho (idCarrinho);
ALTER TABLE possui ADD FOREIGN KEY(idCarrinho) REFERENCES Usuario (idCarrinho);
ALTER TABLE possui ADD FOREIGN KEY(idProduto) REFERENCES Produtos (idProduto);
ALTER TABLE entregue ADD FOREIGN KEY(codigoPedido) REFERENCES Pedido (codigoPedido);
ALTER TABLE login ADD FOREIGN KEY(idSessao) REFERENCES Sessao (idSessao);
ALTER TABLE login ADD FOREIGN KEY(idUsuario) REFERENCES Usuario (idUsuario);
ALTER TABLE salva ADD FOREIGN KEY(idSessao) REFERENCES Sessao (idSessao);
ALTER TABLE salva ADD FOREIGN KEY(idPagamento) REFERENCES Pagamento (idPagamento);
ALTER TABLE salva ADD FOREIGN KEY(IdEndereco) REFERENCES Endereco (IdEndereco);