use teste;

SELECT tf.id_filial,tf.nm_filial,e.id_produto,p.ds_produto,e.qt_estoque_disponivel from tb_filial tf inner join tb_estoque e on e.id_filial = tf.id_filial inner join tb_produto p on e.id_produto = p.id_produto order by tf.id_filial;

INSERT INTO `teste`.`tb_nf` (`ID_TIPO_OPERACAO`, `ID_STATUS_NOTA`, `DT_EMISSAO`, `ID_CLIENTE`, `ID_FORNECEDOR`, `ID_FILIAL`, `ID_TIPO_PAGAMENTO`, `VL_TOTAL_NOTA`) VALUES ('1', '3', '2020-12-10', '1', '1', '1', '3', '10');
INSERT INTO `teste`.`tb_movimentacoes` (`ID_NF`, `ID_TIPO_MOVIMENTACAO`, `FL_PROCESSADO`, `DT_MOVIMENTACAO`) VALUES ('1', '1', '1', '2020-20-12');
INSERT INTO `teste`.`tb_pedido` (`DT_PEDIDO`, `ID_TIPO_PEDIDO`, `ID_CLIENTE`, `ID_FORNECEDOR`, `ID_FILIAL`, `VL_TOTAL_PEDIDO`) VALUES ('2020-12-12', '1', '1', '1', '1', '20');

SELECT n.ID_NF,n.DT_EMISSAO,p.ID_PEDIDO,p.ID_TIPO_PEDIDO,DS_TIPO_PEDIDO,ID_TIPO_OPERACAO,TIPO_OPERACAO,ID_FILIAL,NM_FILIAL,ID_TIPO_FILIAL,ID_PRODUTO,DS_PRODUTO 
FROM TB_NF N inner join tb_pedido p on 