Quando(/^eu realizar o cadastro de um livro pela API$/) do
       @criarLivros = BookPostGetPut.new.create("201","Livro Dom Casmurro","teste@inmetrics.com.br","256","Sumário resumido","2017-06-15T13:00:00.549505+00:00")
	   
	   puts @criarLivros.body
end

Então(/^receberei retorno incluso com sucesso$/) do
 	  expect(@criarLivros.code).to eq 201
  	  puts @criarLivros.code
 end
                                                                                                                                      