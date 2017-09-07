
#language: pt
#utf-8
@book
	Funcionalidade: criar um livro ,alterar, incluir
	Eu como sistema
	quero fazer uma requisição
	para incluir um livro , alterar, retornar todos livros

	@incluirlivro
	Cenario: incluir livro
	Quando eu realizar o cadastro de um livro pela API
	Então receberei retorno incluso com sucesso

	@lerlivroexpecifico
	Cenario: ler um livro específico
	Quando eu consultar um livro específico pela API
	Entao devera retornar codigo com sucesso

	@alterarlivros
	Cenario: alterar livro recem criado
	Quando eu alterar uma  livro especifico pela API
	Então será retornado retornar livro  e seu status