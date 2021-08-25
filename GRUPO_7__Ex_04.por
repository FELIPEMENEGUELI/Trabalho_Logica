programa
{
	
	/*
	Faça um programa que mostre um menu contendo 2 opções: 1. Fibonacci 2. Fatorial. Ao escolher o
numero 1 solicite que o usuário escolha a quantidade de números da série de Fibonacci ele quer
imprimir e execute a função recursivamente. Ao escolher a opção 2 solicite ao usuário que escolha
o número que deseja para o cálculo do Fatorial e execute a função recursivamente.
	*/
	
	funcao inicio()
	{
		inteiro menu=0, fib=0, fat=0
		cadeia rep

		mensagem("Seja Bem-vindx!")
		
		faca{ 
			escreva("\nMENU:\n")
			escreva(" Opção 1: Fibonacci\n")
			escreva(" Opção 2: Fatorial\n")
			
			escreva("\nDigite o número correspondente à sua escolha: ")
			leia(menu)

			se(menu==1){
				escreva("Digite a quantidade de números da série de Fibonacci que deseja imprimir: ")
				leia(fib)
				escreva("A sequencia Fibonacci solicitada é: ")
				para (inteiro i = 1; i <= fib ; i++)
				{
					escreva(fibo(i), " ") 
				}
				escreva("\n")	
			}senao se (menu==2) {
				escreva("Digite o número que deseja efetuar o cálculo do Fatorial: ")
				leia(fat)
				escreva("O Fatorial de ", fat, " é igual a ", fato(fat), ".\n")
			} senao {
				enquanto(menu!=1 ou menu!=2){
					escreva("\n***Atenção, você digitou um número inválido.***\n")
					escreva("Por favor, digite uma opção válida: ")
					leia(menu)
					escreva("\n")
				}
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
		escreva("\n")
	}
	//Função responsável por executar Fibonacci
	funcao inteiro fibo (inteiro fib){
		se (fib == 1){
			retorne 0
		}
		senao se (fib == 2){
			retorne 1
		}
		retorne fibo(fib - 1) + fibo(fib - 2)	
	}
	//Função responsável por executar Fatorial
	funcao inteiro fato (inteiro fat){
		se (fat == 1 ou fat == 0){
			retorne 1
		}		
		retorne fat * fato(fat - 1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1238; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */