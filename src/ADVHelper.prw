/*/{Protheus.doc} AdvAxIncluiCorrigido
    (faz com que ao cancelar inclusão de novo item a tela sendo mostrada atualize)
    @type  Function
    @author Guilherme Cunha Pegoraro
    @since 22/01/2026
    @version 1.0
    @param cAlias, nReg, nOpc
    /*/
User Function AdvAxIncluiCorrigido(cAlias, nReg, nOpc)
	Local nOrdemAtual := 0

	//Verifica se tabela existe e esta aberta
	If Select(cAlias) == 0
		Return Nil
	Endif

	DbSelectArea(cAlias)
	nOrdemAtual := IndexOrd()

	AxInclui(cAlias, nReg, nOpc)

	DbSelectArea(cAlias)
    
    //este if mantem a ordenação selecionada pelo usuario
	If nOrdemAtual > 0
		DbSetOrder(nOrdemAtual)
	Else
		DbSetOrder(1)
	Endif

    DbGoTop()

Return
