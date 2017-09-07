Quando(/^eu consultar um comentário específico pela API$/) do     
	#begin
		@resposta = Comentario.new.get_comentario_especifico 499
		puts @resposta.body
	#end
#Comentario.new   
end                                                                            
                                                                               
Então(/^será retornado todas as informações desse comentário$/) do   
	#@resposta.get_comentario_especifico 499
	#Comentario.new.get_comentario_especifico 499


	# if @resposta.codigoRetornoEspecifico == 200
	# 	puts funcionou corretamente
	# else
	# 	puts retorno inesperado
	# end	
	  expect(@resposta.code).to eq 200
	  puts @resposta.code


end                                                                            
