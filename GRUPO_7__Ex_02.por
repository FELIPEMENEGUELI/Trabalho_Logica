/*
QUESTÃO 2
 Programar uma calculadora com as operações: soma, subtração, multiplicação e divisão. Deverá ter 
um menu com as opções de operação. Após a escolha da operação deverá permitir a inserção de 
dois valores e executar a conta. Deverá apresentar o resultado ao usuário e perguntar se ele deseja 
fazer novo cálculo ou se deseja encerrar o programa. Deverá permitir voltar ao menu caso a escolha 
seja fazer novo cálculo ou sair caso a escolha seja encerrar o programa.
*/

programa
{
	
	funcao inicio()
	{
		real numA, numB
		cadeia operador, rep
		
		mensagem(" Seja Bem-vindx!")
		
		faca{ 
			escreva("\nPor favor, digite o sinal da operação que deseja efetuar de acordo com menu abaixo.\n")
			escreva("Digite o sinal '+' para efetuar uma soma.\n")
			escreva("Digite o sinal '-' para efetuar uma subtração.\n")
			escreva("Digite o sinal '*' para efetuar uma multiplicação.\n")
			escreva("Digite o sinal '/' para efetuar uma divisão.\n")
			escreva("Digite sua escolha: ")
			leia(operador)
						
			check (operador)
			
			escreva("Por favor, digite o primeiro número que deseja calcular: ")
			leia(numA)
	
			escreva("Por favor, digite o segundo número que deseja calcular: ")
			leia(numB)
			
			se (operador == "+"){
				escreva("A soma de ",numA," + ",numB, " = ", soma(numA, numB))
			}
			senao se(operador == "-"){
				escreva("A subtração de ", numA ," - ", numB, " = ", subt(numA, numB))
			}
			senao se(operador == "*"){
				escreva("A multiplicação de ",numA ," * ",numB, " = ", mult(numA, numB))
			}
			senao{
				div(numA, numB)
			}
			
			
	
			escreva("\nDeseja efetuar nova operação? Digite (S ou N):")
			leia(rep)
			escreva("\n")

			se (rep == "S" ou rep == "s"){
				limpa()
			}
		} enquanto (rep == "S" ou rep == "s")

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

	//Função responsável por checar o operador do cálculo e imprimir o calculo efetuado por cada função específica do sinal.
	funcao check (cadeia op){
		faca{
			se	(op == "+" ou op == "-" ou op == "/" ou op == "*"){
				retorne
			}senao{	
				
				escreva("\n***Atenção, você digitou um operador invalido.***\n")
				escreva("Por favor, digite um operador válido: ")
				leia(op)
				escreva("\n")	
			}
		}enquanto(op != "+" ou op != "-" ou op != "/" ou op != "*")
	}

	//Função responsável por calcular a SOMA
	funcao real soma (real X, real Y){
		real resultado = X+Y
		retorne resultado  
	}
	//Função responsável por calcular a SUBTRAÇÃO
	funcao real subt (real X, real Y){
		real resultado = X-Y
		retorne resultado  
	}
	//Função responsável por calcular a MULTIPLICAÇÃO
	funcao real mult (real X, real Y){
		real resultado = X*Y 
		retorne resultado  
	}
	//Função responsável por calcular a DIVISÃO
	funcao div (real X, real Y){
		enquanto (Y<=0){
				escreva("\n***Atenção, o segundo número deve ser maior do que ZERO.***\n\n")
				escreva("Por favor, digite um segundo numero diferente de 0: ")
				leia(Y)
		}
		real resultado = X/Y
		escreva("A divisão de ", X ," / ", Y , " = ", resultado)
		retorne 
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 587; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */