INSERT INTO `carrinho` (`idCarrinho`, `idProduto`, `valorTotal`) VALUES (NULL, NULL, '15,9'), (NULL, NULL, '25,4'), (NULL, NULL, '50,2'), (NULL, NULL, '6'), (NULL, NULL, '15');

INSERT INTO `produtos` (`valorUnitario`, `idProduto`, `descricaoProduto`, `quantidadeProduto`) VALUES ('15,9', NULL, 'lanche x-tudo', '1'), ('25,4', NULL, 'lanche x-salada', '1'), ('50,2', NULL, 'combo 60 salgados', '1'), ('6', NULL, 'Coca-Cola 300ml', '1'), ('15', NULL, 'Coca-Cola 2L', '1');

INSERT INTO `pedido` (`horaPedido`, `codigoPedido`, `idProdutos`, `idPagamento`) VALUES ('12:33:40', NULL, NULL, NULL), ('15:22:10', NULL, NULL, NULL), ('16:30:55', NULL, NULL, NULL), ('11:29:05', NULL, NULL, NULL), ('13:41:23', NULL, NULL, NULL);

INSERT INTO `pagamento` (`idPagamento`, `trocoReceber`, `valorPagamento`, `formaPagamento`) VALUES (NULL, '0', '15,9', 'credito'), (NULL, '0', '25,4', 'debito'), (NULL, '0', '50,2', 'debito'), (NULL, '0', '6', 'pix'), (NULL, '0', '15', 'pix');

INSERT INTO `endereco` (`IdEndereco`, `descCEP`, `descNumero`, `descRua`) VALUES (NULL, '9435410', '5', 'Rua da laranja'), (NULL, '9723610', '53', 'Rua da maça'), (NULL, '9977823', '98', 'Rua da pera'), (NULL, '9723160', '56', 'Rua da cocada'), (NULL, '9937652', '20', 'Avenida Pudim');

INSERT INTO `usuario` (`idUsuario`, `Nome`, `Email`, `Senha`, `idCarrinho`, `CPF`) VALUES (NULL, 'Cliente A', 'clientea@email.com', '123456', NULL, '91107524040'), (NULL, 'Cliente B', 'clienteb@email.com', '111222333', NULL, '55192927013'), (NULL, 'Cliente C', 'clientec@email.com', '77889910', NULL, '42746051087'), (NULL, 'Cliente D', 'cliented@email.com', 'cliente123', NULL, '60673593088'), (NULL, 'Cliente E', 'clientee@email.com', 'senha123', NULL, '46044976050');

INSERT INTO `sessao` (`idSessao`, `horaSessao`) VALUES (NULL, '12:03:40'), (NULL, '14:47:10'), (NULL, '15:50:55'), (NULL, '11:09:05'), (NULL, '13:11:23');