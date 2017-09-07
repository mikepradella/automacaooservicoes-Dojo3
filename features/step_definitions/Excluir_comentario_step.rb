Quando(/^passar id especifico$/) do 
	   @retorno = Comentario.new.excluir_comentario 500
	   puts @retorno.body
end

Entao(/^devera ser excluido comentario com sucesso$/) do
 	   expect(@retorno.code).to eq 200
	   puts @retorno.code

 end