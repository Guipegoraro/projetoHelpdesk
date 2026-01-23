#include "rwmake.ch"
#include "topconn.ch"

/*/{Protheus.doc} ADV001
(Rotina para montagem de tela de tecnicos mBrowse)
@author Guilherme Cunha Pegoraro
@since 22/01/2026
@version 1.0
/*/
User Function ADV001()
	Local cAlias := "ZZA"
	Private cCadastro := "Cadastro de técnicos"
	Private aRotina := {}

	aAdd( aRotina, { "Pesquisar", "AxPesqui", 0, 1 } )
	aAdd( aRotina, { "Visualizar", "AxVisual", 0, 2 } )
	aAdd( aRotina, { "Incluir",    "U_AdvAxIncluiCorrigido", 0, 3 } )
	aAdd( aRotina, { "Alterar",    "AxAltera", 0, 4 } )
	aAdd( aRotina, { "Excluir",    "AxDeleta", 0, 5 } )

	DbSelectArea(cAlias)
	DbSetOrder(1)
	DbGoTop()

	mBrowse(,,,,cAlias)

Return
