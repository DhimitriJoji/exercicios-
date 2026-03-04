programa {
  funcao inicio() {
    cadeia senhaCorreta = "1234"
		cadeia senhaDigitada
		inteiro tentativas = 0

		// O laço continua enquanto a senha estiver errada E o limite de 3 tentativas não for atingido
		faca 
		{
			escreva("Digite sua palavra-passe: ")
			leia(senhaDigitada)

			se (senhaDigitada != senhaCorreta)
			{
				tentativas = tentativas + 1
				escreva("Senha incorreta! Tentativa ", tentativas, " de 3.\n")
			}
			senao
			{
				escreva("Acesso concedido. Bem-vindo!")
			}

		} enquanto (senhaDigitada != senhaCorreta e tentativas < 3)

		// Se o laço parou porque atingiu as 3 tentativas, bloqueia a conta
		se (tentativas == 3)
		{
			escreva("\nCONTA BLOQUEADA POR SEGURANÇA.")
		}
  }
}
