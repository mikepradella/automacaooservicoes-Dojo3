Quando(/^eu alterar uma  livro especifico pela API$/) do
		#binding.pry
		@alterar = BookPostGetPut.new.PutAltera "201","Edição Especial do Dia das Mães"
		puts @alterar.body

end

Então(/^será retornado retornar livro  e seu status$/) do

	  expect(@alterar.code).to eq 200
	  puts @alterar.code
	
end