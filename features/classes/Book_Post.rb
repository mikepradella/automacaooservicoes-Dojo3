class BookPostGetPut

	include HTTParty

	base_uri = "http://fakerestapi.azurewebsites.net/api/Book"
	format :json

	attr_reader :request_body

	#  def initialize
	# 	@request_body = (YAML.load_file ('./fixtures/comments_body.yml'))

	# #	@request_body = (YAML.load_file ('./fixtures/yml'))

	#  end

	 #metodo post

	 def create(id,title,descricao,pageCount,excerpt,publishDate)
	
	 # nao conseguir entender 
	#	json = self.request_body["teste"]
		# json {}	 
	 # 	json["title"] = title
	 # 	json["descricao"] = descricao
	 # 	json["pageCount"] = pageCount
	 # 	json["excerpt"] = excerpt
	 # 	json["publishDate"] = publishDate
	 # 	self.class.post("api/Book",:headers => {'Content-type' => 'application/json'}, :body => json.to_json)
	
        #response = HTTParty.post("http://jsonplaceholder.typicode.com/comments/", 
        
        #nao consegui
        # body =  {'title' 	   => title,
        # 	     'descricao'   => descricao,
        #     	 'pageCount'   => pageCount,
        #          'excerpt' 	   => excerpt,
        #        	 'publishDate' => publishDate}.to_json,
        # headers = {'Content-Type' => 'application/json'}	
        # self.class.post(base_uri,headers ,body)  	

		response = HTTParty.post("http://fakerestapi.azurewebsites.net/api/Books", 
        :body =>{'ID'           => id,
        		 'title' 		=> title,
        	     'descricao'	=> descricao,
            	 'pageCount'    => pageCount,
                 'excerpt'  	=> excerpt,
               	 'publishDate'  => publishDate}.to_json,
        :headers =>{'Content-Type' => 'application/json'})


	  end 

	  def get(index=nil)
	  	self.class.get("http://fakerestapi.azurewebsites.net/api/Books/#{index}")
	  	
	  end

	  def getTodos
	  	self.class.get("http://fakerestapi.azurewebsites.net/api/Books")
	  end

	  def PutAltera(userId,excerpt)
	 	# json["userId"] = userId
	 	# json["publishDate"] = publishDate
	 	# self.class.put("api/Book/#{userId}",:headers => {'Content-type' => 'application/json'}, :body => json.to_json)

		response = HTTParty.put("http://fakerestapi.azurewebsites.net/api/Books/#{userId}", 
        :body =>{'ID'           => userId,
                 'excerpt'  	=> excerpt}.to_json,
        :headers =>{'Content-Type' => 'application/json'})


	  end


end
