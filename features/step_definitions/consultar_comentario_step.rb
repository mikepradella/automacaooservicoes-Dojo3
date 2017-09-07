                                                                         
Quando(/^eu consultar um lista de comentarios pela API$/) do      
	   @respostas = Comentario.new.get_todos_comentario
	   puts @respostas.body
 #@resposta.get_todos_comentario
 #puts response.code

end                                                                            
                                                                               
Então(/^será retornado todos os comentario$/) do 
 # nao funciona 
      expect(@respostas.code).to eq 200
      puts @respostas.code
end            