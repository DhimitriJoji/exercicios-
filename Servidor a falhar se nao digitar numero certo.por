programa {
  funcao inicio() {
    inteiro status

		escreva("Digite o código de status do servidor: ")
		leia(status)

		// Enquanto o status for diferente de 200, ele continua repetindo
		enquanto (status != 200)
		{
			escreva("Servidor a falhar. A tentar novamente...\n")
			
			escreva("Digite o novo status: ")
			leia(status)
		}

		escreva("Servidor OK!")
	}
  }

