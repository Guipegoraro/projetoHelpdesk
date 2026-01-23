#include "rwmake.ch"
#include "topconn.ch"

/*/{Protheus.doc} ADV002
(Rotina para montagem de tela de SLA mBrowse)
@author Guilherme Cunha Pegoraro
@since 22/01/2026
@version 1.0
/*/
User Function ADV002()
	//no curso é utilizado "AxCadastro" porém ele vem com um bug que, ao clicar em cancelar, a tela mostra apenas o ultimo registro
	//criado, por isso foi trocado por "mBrowse"
	Local cAlias := "ZZB"
	Private cCadastro := "Cadastro de SLA"
	Private aRotina := {}

	aAdd( aRotina,  {"Pesquisar", "AxPesqui",            0, 1})
	aAdd( aRotina,  {"Visualizar", "AxVisual",           0, 2})
	aAdd( aRotina,  {"Incluir", "U_AdvAxIncluiCorrigido",0, 3})
	aAdd( aRotina,  {"Alterar", "AxAltera",              0, 4})
	aAdd( aRotina,  {"Excluir", "AxDeleta",              0, 5})

    //funções para fazer com que a tabela não mostre apenas o ultimo registro criado
    DbSelectArea(cAlias)
    DbSetOrder(1)
    DbGoTop()

    mBrowse(,,,,cAlias)
    
Return
