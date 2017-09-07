require 'rspec'
# response = nil
# Quando(/^eu realizar o cadastro de um comentário pela API$/) do
#   response = HTTParty.post("http://jsonplaceholder.typicode.com/comments/",
#   	:body => {
#         "postId": 1,
#         "name": "id labore ex et quam laborum",
#         "email": "Eliseo@gardner.biz",
#         "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
#     }.to_s
#     )
#   puts response.code
# end

# Então(/^receberei retorno de sucesso$/) do
#   expect(response.code).to eq 201
#   puts "Validando o recebimento"
# end

# Quando(/^eu consultar um comentário específico pela API$/) do

#         response = HTTParty.get("http://jsonplaceholder.typicode.com/comments/" + idComentario.to_s)
# end

# Então(/^será retornado todas as informações desse comentário$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Quando(/^eu consultar um lista de comentarios pela API$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end
Quando(/^eu realizar o cadastro de um comentário pela API$/) do   
  	   @criar = Comentario.new.criar_comentario("1000","2000","mike comentario", "mike email","dojo 3")
 # @response.criar_comentario("100","200","mike comentario", "mike email","dojo 3" )
 #@criar.criar_comentario("1000","2000","mike comentario", "mike email","dojo 3")
	   puts @criar.body

end                                                                            
                                                                               
Então(/^receberei retorno de sucesso$/) do     
 # puts @criar.code
 	  expect(@criar.code).to eq 201
 	  puts @criar.code
end                                                                            
                                                                               
                                                                