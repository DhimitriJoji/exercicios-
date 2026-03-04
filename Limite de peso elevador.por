programa {
  funcao inicio() {
    real pesoTotal = 0.0
		real pesoPessoa
		inteiro limite = 800

		escreva("--- Sistema de Controle de Elevador (Limite: 800kg) ---\n")

		// O laço continua enquanto houver espaço no elevador
		enquanto (pesoTotal <= limite)
		{
			escreva("\nDigite o peso da próxima pessoa (kg): ")
			leia(pesoPessoa)

			// Verificamos se a entrada desta pessoa ultrapassa o limite total
			se (pesoTotal + pesoPessoa <= limite)
			{
				pesoTotal = pesoTotal + pesoPessoa
				escreva("Entrada permitida! Peso atual: ", pesoTotal, "kg\n")
			}
			senao
			{
				escreva("ENTRADA RECUSADA: Limite de 800kg seria ultrapassado.\n")
				// Usamos o comando 'pare' para encerrar o laço imediatamente
				pare 
			}
		}

		escreva("\nElevador pronto para subir. Peso final: ", pesoTotal, "kg")
	}
  }

