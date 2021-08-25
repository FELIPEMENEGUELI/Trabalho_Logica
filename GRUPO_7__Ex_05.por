programa
{

	/*
	Desenvolva um programa no qual o usuário informa 10 números e programa responde qual é o
menor, o maior e a média dos valores.
	*/
	
	funcao inicio()
	{	
		real vetor [10] //= {9.0,87.0,5.0,200.0,7.0,6.0,100.0,3.0,8.0,11.0}
		cadeia rep

		mensagem(" Seja Bem-vindx!")

		faca{
			para (inteiro i=0; i<10; i++){
			 	escreva("Digite o ", i+1, "º número da sequência: ")
			 	leia(vetor[i])
			}
			escreva("\n")
			real vMenor = vetor[0]
			real vMaior = vetor[0]
	
			para(inteiro i=0; i<10; i++){
				se(vetor[i]<vMenor){
					vMenor = vetor[i]
				} senao se (vetor[i]>vMaior){
					vMaior = vetor[i]
				}
			}
		
			media(vetor, 0, 9, 0.0)
	
			escreva("O menor número do vetor é: ", vMenor, ".\n")
			escreva("O maior número do vetor é: ", vMaior, ".\n")
			escreva("A media de todos os números do vetor é: ", media(vetor, 0, 9, 0.0), ".\n")

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
	
	funcao real media (real vetor[], inteiro i, inteiro f, real total){
		se (i <= f){
			total = total + vetor[i]
			retorne media(vetor, i+1, f, total)
		} senao{
			real resultado = total/10
			retorne resultado
		}
	}
	
	/*funcao inteiro verifMenor (inteiro vetor[], inteiro menor, inteiro i, inteiro f, inteiro p){
			se (i<=f){	
				se (menor == vetor[i]){
					menor=vetor[i] 
					p=i 
					i++ 
					verifMenor(vetor, menor, i, f, p)
				} senao se (menor < vetor[i]){
					i++
					verifMenor(vetor, menor, i, f, p)
				} senao {
					i++
					verifMenor(vetor, menor, i, f, p)
				}
			} senao {
			escreva("\n\nO menor número do vetor tem o valor ", menor, " e está na ", p+1, "º posição.")
			}
			retorne menor
	*/	}
	/*	
	funcao inteiro verifMaior (inteiro vetor[], inteiro maior, inteiro i, inteiro f, inteiro p){
			se (i<=f){	
				se (maior == vetor[i]){
					maior=vetor[i]
					p = i
					i++
					verifMaior(vetor, maior, i, f, p)
				} senao se (maior < vetor[i]){
					maior=vetor[i]
					p = i
					i++
					verifMaior(vetor, maior, i, f, p)
				}senao {
					i++
					verifMaior(vetor, maior, i, f, p)
				}
			} senao {
			escreva("\n\nO maior numero do vetor tem o valor ", maior, " e está na ", p+1, "º posição.\n\n")
			}
			retorne maior
			
		}
		*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1100; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */