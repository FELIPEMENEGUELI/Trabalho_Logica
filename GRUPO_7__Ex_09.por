programa
{
	inclua biblioteca Matematica
/*
	9. Elabore um programa que calcule uma equação do 2° Grau modelo ax2+bx+c. Solicite a entrada das 
variáveis a, b, c e calcule as raízes. Apresente no final do cálculo a equação composta pelas 
variáveis lidas e o resultado.
*/


	funcao inicio()
	{
		real a, b, c, x1, x2
		real delta = 0.0
		cadeia menu
		
		mensagem(" Seja Bem-vindx!")

		faca{
			faca{
				escreva("\nCalculadora para equação de segundo grau:\n")
				escreva("   ax²+bx+c\n\n")
				
				escreva("Por favor, insira o valor da variável 'a': ")
				leia(a)
				
				escreva("Por favor, insira o valor da variável 'b': ")
				leia(b)
				
				escreva("Por favor, insira o valor da variável 'c': ")
				leia(c)
				limpa()
		
				escreva("Você digitou a seguinte equação:\n   ")
				escreveEquacao(a, b, c)
				
				
				escreva("\nDeseja prosseguir para o cálculo da raiz? S ou N: ")
				leia(menu)
				limpa()
			} enquanto (menu=="N" ou menu=="n")
	
			limpa()
			delta = (b*b)+((-4*a)*c)
	
			real raiz = Matematica.raiz(delta, 2.0)
	
			se (delta<0){
				escreva("A equação não possui raízes reais.")	
			} senao {
				x1 = (-1.0*b +1*raiz) / (2.0*a)
				x2 = (-1.0*b -1*raiz) / (2.0*a)

				escreva("A equação: \n   ")
				escreveEquacao(a, b, c)
				escreva("\nPossui as raizes:\n")
				escreva("  X1 é igual a ", x1, "\n")
				escreva("  X2 é igual a ", x2, "\n")
			}
	
			escreva("\nPara voltar ao menu inicial, digite 'V'.\n")
			escreva("Para sair da calculadora, digite 'X'.\n")
			escreva("  Digite a opção desejada: ")
			leia(menu)
		} enquanto (menu=="I" ou menu=="i")

		limpa()
		mensagem("Obrigado e até a próxima!")

		mont()
		
	}
	funcao mont (){
		escreva("\n")
		escreva(" ## ##   ### ###  ### ##   ### ##      ##    #### ##   ### ###   ## ## \n")
		escreva("##   ##   ##  ##   ##  ##   ##  ##     ##    # ## ##   ##  ##  ##   ## \n")
		escreva("####      ##       ##  ##   ##  ##   ## ##     ##      ##      ## \n")
		escreva(" #####    ## ##    ## ##    ## ##    ##  ##    ##      ## ##   ## \n")
		escreva("    ###   ##       ## ##    ## ##    ## ###    ##      ##      ## \n")
		escreva("##   ##   ##  ##   ##  ##   ##  ##   ##  ##    ##      ##  ##  ##   ## \n")
		escreva(" ## ##   ### ###  #### ##  #### ##  ###  ##   ####    ### ###   ## ## \n")
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
	
	funcao escreveEquacao (real a, real b, real c){
		se(b<0 e c<0){	
				escreva(a, "X ", b, "X ", c, " = 0\n")
			}senao se (b<0 e c>=0){
				escreva(a, "X ", b, "X + ", c, " = 0\n")
			}senao se (b>=0 e c<0){
				escreva(a, "X + ", b, "X ", c, " = 0\n")
			}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1608; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */