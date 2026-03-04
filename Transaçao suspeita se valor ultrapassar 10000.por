programa {
  funcao inicio() {

	
		real valor
		inteiro i

		// O sistema analisa 20 transferências em sequência
		para (i = 1; i <= 20; i++)
		{
			escreva("Digite o valor da transferência ", i, ": ")
			leia(valor)

			// SE o valor for maior que 10.000, dispara o alerta
			se (valor > 10000)
			{
				escreva("ALERTA: Transação Suspeita\n")
			}
		}
	}
}
  }

