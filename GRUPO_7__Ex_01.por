programa
{
	
	funcao inicio()
	{
		real numA, numB
		cadeia operador, rep
		//Mensagem de entrada
		mensagem("Seja Bem-vindx!")
		//Solicita o input do usuário
		faca{
			escreva("Por favor, digite o dividendo desejado: ")
			leia(numA)
	
			escreva("Por favor, digite o divisor desejado: ")
			leia(numB)

			//Confere se o divisor é válido. Gera o alerta e solicita número válido.
			enquanto (numB<=0){
				escreva("\n***Atenção, o segundo número deve ser maior do que ZERO.***\n\n")
				escreva("Por favor, digite um divisor válido: ")
				leia(numB)
			}
			//calcula a divisão
			escreva(div(numA, numB))
			//Pergunta ao usuário se deseja fazer nova divisão ou sair do programa
			escreva("\nDeseja efetuar nova operação? Digite (S ou N):")
			leia(rep)
			escreva("\n")
			//testa input do usuário e limpa a tela se necessário
			se (rep == "S" ou rep == "s"){
				limpa()
			}
		//Confirma se retorna ao menu inicial ou sai do programa
		} enquanto (rep == "S" ou rep == "s")
		//Mensagem de saída
		mensagem("Obrigado e até a próxima!")
	}
	//Função responsável por imprimir mensagem com layout
	funcao mensagem (cadeia texto){
		para (inteiro i = 0; i < 10; i++){
			escreva(" - ")		
		}
		escreva("\n")
		escreva("  ", texto, "\n")
		para (inteiro i = 0; i < 10; i++){
			escreva(" - ")		
		}
		escreva("\n\n")
	}
	
	//Função responsável por calcular a DIVISÃO
	funcao real div (real X, real Y){
		real resultado = X/Y
		retorne resultado  
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 124; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */