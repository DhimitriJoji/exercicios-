programa {
  funcao inicio() {
    // Inicializamos os valores conforme o enunciado
		inteiro folhas = 50
  
		inteiro documentos = 10

		// O laço só funciona se houver folhas E documentos ao mesmo tempo
		enquanto (folhas > 0 e documentos > 0)
		{
			escreva("A imprimir documento... Restam ", documentos, " na fila.\n")
			
			// A cada volta, diminuímos 1 de cada contador
			folhas = folhas - 1
			documentos = documentos - 1
		}

		escreva("\n--- Status Final ---")
		escreva("\nFolhas restantes: ", folhas)
		escreva("\nDocumentos na fila: ", documentos)
		
		se (documentos == 0) {
			escreva("\nSucesso: Todos os documentos foram impressos!")
		} senao {
			escreva("\nAlerta: Acabou o papel!")
		}
  }
}
