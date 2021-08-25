programa
{
	
	funcao inicio()
	{
		inteiro n, dividendo=0, divisor=0, contPrimo=0, contDiv=0
	
		escreva("Digite um valor: ")
		leia(n)
		//Permite validação de números primos até a quantidade de números primos soliicitada pela usuário
		para(dividendo=2; contDiv<n; dividendo++){
				//Procura numeros primos
				para(divisor=1; divisor<=dividendo; divisor++){
						se (dividendo % divisor == 0) {
							contPrimo++ 
						}	
				}
				//Somente será número primo se o numero de divisões sem resto possiveis entre 1 e o dividendo for 2
				se(contPrimo==2){
					//Imprime o número primo encontrado
					escreva(dividendo, " ")
					//Conta quantos números primos foram impressos
					contDiv++
					//re-starta as variáveis necessárias para validar se é número primo
					contPrimo=0
					divisor=1
				}senao{
					//re-starta as variável necessária para validar se é número primo
					divisor=1
					contPrimo=0
				}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n, 6, 10, 1}-{dividendo, 6, 13, 9}-{divisor, 6, 26, 7}-{contPrimo, 6, 37, 9}-{contDiv, 6, 50, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */