programa {
  funcao inicio() {
    // Definimos o valor inicial e a taxa de desvalorização
		real valorMaquina = 100000.0
		inteiro ano

		escreva("--- Relatório de Depreciação (15% ao ano) ---\n")
		escreva("Valor Inicial: ", valorMaquina, "€\n\n")

		// O laço vai rodar do ano 1 até o ano 5
		para (ano = 1; ano <= 5; ano++)
		{
			// Cálculo: o valor atual menos 15% dele mesmo
			valorMaquina = valorMaquina - (valorMaquina * 0.15)

			escreva("Ano ", ano, ": ", valorMaquina, "€\n")
		}
  }
}
