programa
{
	
	funcao inicio()
	{
		const inteiro TAMANHO = 10
		inteiro vetor[10], aux=0, troca=1, i=0
		cadeia ver, menu

		mensagem(" Seja Bem-vindx!")

		faca{
			faca{
					escreva("Insira a seguir 10 números no vetor.\n")
					para(i=0; i<TAMANHO;i++){
						escreva("Insira o ", i+1, "º valor: ")
						leia(vetor[i])
						limpa()
					}
			
					escreva("\nVocê digitou os seguintes números: ")
					para (i=0; i<TAMANHO; i++){
						escreva(vetor[i], " ")
					}
					escreva("\n\nDeseja inserir os números novamente? S ou N: ")
					leia(ver)
				} enquanto (ver=="S" ou ver=="s")
				limpa()
			faca {
					faca {
						escreva("\nEscolha de que forma deseja ordenar a lista: \n")
						escreva("  Para ordem Crescente, C.\n")
						escreva("  Para ordem Decrescente, D.\n")
						escreva("Digite a opção desejada: ")
						leia(menu)
						limpa()
						
						se (menu=="C" ou menu=="c"){
							cresc(vetor, troca, TAMANHO, aux)
						} senao se (menu=="D" ou menu=="d"){
							decresc(vetor, troca, TAMANHO, aux)
						} senao {
							escreva("Por favor digite um opção válida.")
							limpa()
						}
					} enquanto (menu!="C" e menu!="c" e menu!="D" e menu!="d")
		
					escreva("MENU: \n")
					escreva("  Digite 'V', para voltar ao menu anterior.\n")
					escreva("  Digite 'I', para voltar ao menu inicial.\n")
					escreva("  Digite 'X', para sair.\n")
					escreva("Digite a opção desejada: ")
					leia(menu)
					limpa()
				
			}enquanto (menu=="V" ou menu=="v")
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
	
	funcao decresc (inteiro vetor[], inteiro troca, inteiro TAMANHO, inteiro aux){
		limpa()
		enquanto(troca==1){
			troca=0
			para (inteiro i=0; i<TAMANHO-1; i++){
				se (vetor[i]<vetor[i+1]){
					aux=vetor[i+1]
					vetor[i+1]=vetor[i]
					vetor[i]=aux
					troca=1
				}
			}
		
		} escreva("Segue o vetor ordenado de forma crescente: \n") 
		para (inteiro i=0; i<TAMANHO; i++){
				escreva(vetor[i], " ")
		}
		escreva("\n\n")
	}
	
	funcao cresc (inteiro vetor[], inteiro troca, inteiro TAMANHO, inteiro aux){
		limpa()
		enquanto(troca==1){
			troca=0
			para (inteiro i=0; i<TAMANHO-1; i++){
				se (vetor[i]>vetor[i+1]){
					aux=vetor[i]
					vetor[i]=vetor[i+1]
					vetor[i+1]=aux
					troca=1
				}
			}
		
		} escreva("Segue o vetor ordenado de forma crescente: \n") 
		para (inteiro i=0; i<TAMANHO; i++){
				escreva(vetor[i], " ")
		}
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1632; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 109, 23, 5}-{troca, 109, 40, 5}-{aux, 109, 72, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */