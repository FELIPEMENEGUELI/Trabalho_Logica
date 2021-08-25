programa
{
	/*
	Escreva um programa que leia 10 nomes de alunos e duas notas de avaliações para cada aluno.
Calcule e escreva a média de cada aluno, seguido da informação se foi aprovado ou reprovado.
Considere como média para aprovação 6. Dica: Utilize quantos vetores precisar. Ex. Saída: Fulano
de tal P1= 8.0, P2=6.0, Media=7.0, aprovado!
	*/
	funcao inicio()
	{
		real n1=0.0,n2=0.0
		inteiro qtdAlunos = 0
		cadeia aluno

		mensagem("Seja Bem-vindx!")

		escreva("Digite a quantidade de alunos da turma: ")
		leia(qtdAlunos)
		
		para(inteiro i=0; i<qtdAlunos ; i++){
			escreva("Digite o nome do aluno: \n")
			leia(aluno)
			escreva("Digite a primeira nota do aluno:\n ")
			leia(n1)
			escreva("Digite a segunda nota do aluno:\n ")
			leia(n2)

			se (media(n1, n2)>=6){
				escreva(aluno, ", P1 = ",n1,", P2 = ",n2, ", Media = ", media(n1, n2),", aprovado!\n\n")
			} senao{
				escreva(aluno, ", P1 = ",n1,", P2 = ",n2, ", Media = ", media(n1, n2),", reprovado!\n\n")
			}
		}
		mensagem("Obrigado e até a próxima!")
	}
	
	funcao real media (real n1, real n2){
		real resultado = (n1+n2)/2
		retorne resultado
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

/*


Escreva um programa que leia 10 nomes de alunos e duas notas de avaliações para cada aluno.
Calcule e escreva a média de cada aluno, seguido da informação se foi aprovado ou reprovado.
Considere como média para aprovação 6. Dica: Utilize quantos vetores precisar. Ex. Saída: Fulano
de tal P1= 8.0, P2=6.0, Media=7.0, aprovado!


*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 454; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */