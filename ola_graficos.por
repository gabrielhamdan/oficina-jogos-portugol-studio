programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u

	logico fim_execucao = falso

	inteiro posicao_x = 200, posicao_y = 100
	inteiro velocidade = 100
	inteiro grafico_dino = 0

	const inteiro FPS = 60
	inteiro duracao_quadro = (1000 / FPS)
	inteiro tempo_ultimo_quadro = 0

	
	funcao inicio()
	{
		inicializa_jogo()

		enquanto (nao fim_execucao) {
			le_entrada_usuario()
			atualiza()
			desenha()
		}
	}

	funcao inicializa_jogo() {
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(800, 600)
		g.definir_titulo_janela("Olá, gráficos!")
		
		grafico_dino = g.carregar_imagem("./sprite_dino_parado.png")
		
		tempo_ultimo_quadro = u.tempo_decorrido()
	}

	funcao sincroniza_taxa_quadro() {
		enquanto (u.tempo_decorrido() < (tempo_ultimo_quadro + duracao_quadro)) {
			
		}
	}

	funcao le_entrada_usuario() {
		se (t.tecla_pressionada(t.TECLA_ESC)) {	
			fim_execucao = verdadeiro
		}
	}

	funcao atualiza() {
		sincroniza_taxa_quadro()
		real delta = (u.tempo_decorrido() - tempo_ultimo_quadro) / 1000.0
		tempo_ultimo_quadro = u.tempo_decorrido()
		
		posicao_x += velocidade * delta
		posicao_y += velocidade * delta
		
		// sem FPS
		//posicao_x += velocidade
	}

	funcao desenha() {
//		g.definir_cor(g.COR_BRANCO)
//		g.desenhar_retangulo(posicao_x, posicao_y, 30, 30, falso, verdadeiro)

		g.desenhar_imagem(posicao_x, posicao_y, grafico_dino)
		
		g.renderizar()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 987; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */