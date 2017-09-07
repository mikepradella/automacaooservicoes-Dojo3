Quando(/^eu consultar um livro específico pela API$/) do
	   # @Livros = BookPostGetPut.new.getTodos 	   
	   # puts @Livros.body

	    @Livros = BookPostGetPut.new.get "201"
	    
	    puts @Livros.body

end

Entao(/^devera retornar codigo com sucesso$/) do

	  expect(@Livros.code).to eq 200
	  puts @Livros.code
end