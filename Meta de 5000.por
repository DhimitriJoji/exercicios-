programa {
  funcao inicio() {
    // Variáveis para o valor da venda atual e para somar o total
		real venda, somaTotal = 0.0

		// O laço continua pedindo valores ENQUANTO a meta de 5000 não for atingida
		enquanto (somaTotal < 5000)
		{
			escreva("Introduza o valor da venda: ")
			leia(venda)

			// Somamos a venda ao total acumulado
			somaTotal = somaTotal + venda

			escreva("Total acumulado: ", somaTotal, "€\n")
		}

		escreva("\nMeta atingida ou ultrapassada! Parabéns.")
		escreva("\nValor final: ", somaTotal, "€")
  }
}
