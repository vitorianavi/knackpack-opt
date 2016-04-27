# knapsack-problem

Universidade Federal do Amazonas

Equipe: Ana Vitória Vitoriano
	Maria Clara Melo

Programação linear para solucionar o Problema da Mochila 0-1.

Instruções para compilação

1. Altere os seguintes campos do arquivo "Makefile" localizado na pasta "build":
- CPLEXDIR      = $PATH/cplex
- CONCERTDIR    = $PATH/concert"

Substitua $PATH pelo local de instalação da ferramenta IBM CLPEX Optimizer em sua máquina. Exemplo: /opt/ibm/ILOG/CPLEX_Studio_Community1263.

2. Dentro da pasta "build", execute o comando "make".

3. Ainda dentro da pasta "build", execute "make execute". Será exibida a solução para a seguinte modelagem do Problema da Mochila 0-1:

	max 70*x0 + 20*x1 + 39*x2 + 37*x3 + 7*x4 + 5*x5 + 10*x6
	
	s.a.
	31x0 + 10x1 + 20x2 + 19x3 + 4x4 + 3x5 + 6x6 <= 50
	
	0 <= x0, x1, x2, x3, x4, x5, x6 <= 1
