Gestão de Estoque
Sistema de gestão de estoque para controle de mercadorias, operadores, endereços, pickings e aéreos.


Estrutura do Banco de Dados
Principais tabelas:

Operador	Armazena operadores e suas funções (Empilhador, Abastecedor).
Endereço	Define localização física de mercadorias e aéreos (rua, prédio, nível, apto).
Picking	Locais de separação de pedidos, vinculados a endereços.
Mercadoria	Produtos com descrição, valor, estoque, validade e picking associado.
Aéreo	Aéreos com capacidade, quantidade e vínculo a endereço e mercadoria.
Movimentação	Registra movimentações realizadas pelos operadores.


População Inicial:

Endereços e pickings criados para armazenagem.
Aéreos cadastrados com capacidades e localizações.
Mercadorias adicionadas com estoque e validade.
Operadores cadastrados com suas funções.


Consultas Úteis:

Listar endereços das mercadorias.
Ver movimentações por operador.
Aéreos com mercadorias associadas.
Mercadorias com estoque baixo.
Quantidade de aéreos por mercadoria.


Atualizações e Limpeza

Atualizar estoque, funções de operadores e capacidade de pickings.
Excluir mercadorias sem estoque, aéreos sem mercadorias e movimentações específicas.
