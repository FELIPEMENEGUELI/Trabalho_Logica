programa
{

    funcao inicio(){
    	
        inteiro n1, n2, soma=0

        mensagem(" Seja Bem-vindx!")

        escreva ("Digite o número para o início do laço: ")
        leia(n1)
        faca{
        	escreva ("Digite o número para o fim do laço: ")
        	leia(n2)
        	se(n2<=n1){
        		escreva("Fim do laço deve ser maior que o inicio!\n" , "Digite novamente!")
        	}
        } enquanto(n2<=n1)

		para (inteiro i = n1; i <= n2; i++){
               se (i % 2 == 0 ){
                  soma= soma+i
               }  
          }
          escreva ("A soma de todos os números pares: ", soma)

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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 667; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */