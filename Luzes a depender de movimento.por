programa {
  funcao inicio() {
    inteiro temMovimento

		escreva("Tem Movimento? (1-Sim, 0-Não): ")
		leia(temMovimento)

		// O laço repete e mantém as luzes acesas enquanto o valor for 1
		enquanto (temMovimento == 1)
		{
			escreva("Luzes ACESAS! \n")
			
			escreva("Tem Movimento? (1-Sim, 0-Não): ")
			leia(temMovimento)
		}

		escreva("Sem movimento. Luzes APAGADAS.")
	}
}
  