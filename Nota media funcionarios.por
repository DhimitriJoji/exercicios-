programa {
  funcao inicio() {
    // Variáveis para nota, soma total e a média final
		real nota, somaTotal = 0.0, media
		inteiro i

		// Laço para ler as notas dos 10 funcionários
		para (i = 1; i <= 10; i++)
		{
			escreva("Digite a nota do funcionário ", i, ": ")
			leia(nota)

			// Acumulador: soma a nota atual ao que já tínhamos guardado
			somaTotal = somaTotal + nota
		}

		// Cálculo da média (Soma total dividida pela quantidade)
		media = somaTotal / 10

		escreva("\n--- Resultado Final ---")
		escreva("\nA Média da Equipa é: ", media)
  }
}
