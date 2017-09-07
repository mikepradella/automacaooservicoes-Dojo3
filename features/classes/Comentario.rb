class Comentario
	include HTTParty
	#response =nil

	#base_uri "http://jsonplaceholder.typicode.com"

    attr_accessor :codigoRetornoEspecifico

	def get_todos_comentario
        response = HTTParty.get("http://jsonplaceholder.typicode.com/comments/")
        #puts response.body
        #puts codigo = response.code

        #expect(response.code).to eq 200
    end



    def criar_comentario(postId, id, nome, email, mensagem)
        response = HTTParty.post("http://jsonplaceholder.typicode.com/comments/", 
        :body =>{'postId' => postId,
        	     'id'	  => id,
            	 'name'   => nome,
                 'email'  => email,
               	 'mensagem'   => mensagem}.to_json,
        :headers =>{'Content-Type' => 'application/json'})


	 #	self.class.post("/comments/",:headers => {'Content-type' => 'application/json'}, :body => json.to_json)
	  	
    end

     def get_comentario_especifico (idComentario)
        response = HTTParty.get("http://jsonplaceholder.typicode.com/comments/#{idComentario.to_s}")
       # puts response.body
       # puts response.code
        #codigoRetornoEspecifico = response.code
        #nao funciona
        #expect(response.code).to eq 200
    end

    def excluir_comentario (id)    
        response = HTTParty.delete("http://jsonplaceholder.typicode.com/comments/#{id.to_s}")
    end



end