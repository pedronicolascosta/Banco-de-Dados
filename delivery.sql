CREATE TABLE Carrinho 
( 
 idCarrinho INT PRIMARY KEY,  
 idProduto INT,  
 valorTotal FLOAT 
);

CREATE TABLE Produtos 
( 
 valorUnitario FLOAT,  
 idProduto INT PRIMARY KEY,  
 descricaoProduto CHAR(150),  
 quantidadeProduto INT
);

CREATE TABLE Pedido 
( 
 horaPedido DATE,  
 codigoPedido INT PRIMARY KEY,  
 idProdutos INT,  
 idPagamento INT
); 

CREATE TABLE Pagamento 
( 
 idPagamento INT PRIMARY KEY,  
 trocoReceber FLOAT,  
 valorPagamento FLOAT,  
 formaPagamento VARCHAR(7)  
); 

CREATE TABLE Endereco 
( 
 IdEndereco INT PRIMARY KEY,  
 descCEP INT,  
 descNumero INT,  
 descRua VARCHAR(100)
); 

CREATE TABLE Usuario 
( 
 idUsuario INT PRIMARY KEY,  
 Nome CHAR(100),  
 Email VARCHAR(100),  
 idCarrinho INT
); 

CREATE TABLE Sessao 
( 
 horaSessao INT PRIMARY KEY
); 

CREATE TABLE possui 
( 
 idCarrinho INT PRIMARY KEY,  
 idProduto INT
); 

CREATE TABLE entregue 
( 
 codigoPedido INT PRIMARY KEY 
); 

CREATE TABLE login 
( 
 horaSessao INT,  
 idUsuario INT,
 idLogin INT PRIMARY KEY
); 

CREATE TABLE salva 
( 
 horaSessao INT,  
 idPagamento INT,  
 IdEndereco INT
); 

ALTER TABLE Pedido ADD FOREIGN KEY(idProdutos) REFERENCES Produtos (idProduto);
ALTER TABLE Pedido ADD FOREIGN KEY(idPagamento) REFERENCES Pagamento (idPagamento);
ALTER TABLE Usuario ADD FOREIGN KEY(idCarrinho) REFERENCES Carrinho (idCarrinho);
ALTER TABLE possui ADD FOREIGN KEY(idCarrinho) REFERENCES Usuario (idCarrinho);
ALTER TABLE possui ADD FOREIGN KEY(idProduto) REFERENCES Produtos (idProduto);
ALTER TABLE entregue ADD FOREIGN KEY(codigoPedido) REFERENCES Pedido (codigoPedido);
ALTER TABLE login ADD FOREIGN KEY(horaSessao) REFERENCES Sessao (horaSessao);
ALTER TABLE login ADD FOREIGN KEY(idUsuario) REFERENCES Usuario (idUsuario);
ALTER TABLE salva ADD FOREIGN KEY(horaSessao) REFERENCES Sessao (horaSessao);
ALTER TABLE salva ADD FOREIGN KEY(idPagamento) REFERENCES Pagamento (idPagamento);
ALTER TABLE salva ADD FOREIGN KEY(IdEndereco) REFERENCES Endereco (IdEndereco);