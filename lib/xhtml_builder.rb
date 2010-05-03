class XHTMLBuilder

	attr_accessor :content

	def initialize ()
		@content = ""
	end
	
	def html
		@content << "<html>\n"
		yield
		@content << "</html>\n"
	end
	
	def body
		@content << "<body>\n"
		yield
		@content << "</body>\n"	
	end
	
	def head
		@content << "<head>\n"
		yield
		@content << "</head>\n"
	end
	
	def h1 (string)
		@content << "<h1>\n" << string << "\n</h1>\n"
	end
	
	def h2
		@content << "<h2>\nError\n</h2>\n"
	end
	
	def p (string=nil)
		@content << "<p>\n"
		
		if string.nil?
			yield
		else
			@content << string << "\n"
		end
		
		@content << "</p>\n"
	end
	
	def div (string=nil)
		@content << "<div>\n"
		
		if string.nil?
			yield
		else
			@content << string << "\n"
		end
		
		@content << "</div>\n"
	end
	
	def ul
		@content << "<ul>\n"
		yield
		@content << "</ul>\n"
	end
	
	def li (string)
		@content << "<li>\n" << string << "\n</li>\n"	
	end
	
	def b (string)
		@content << "<b>\n" << string << "\n</b>\n"
	end
	
	def i (string)
		@content << "<i>\n" << string << "\n</i>\n"
	end
	
	def title (string)
		@content << "<title>\n" << string << "\n</title>\n"
	end
	
	def method_missing (m_name, *args, &block)
	
		@content << "<h2>\n" ;
		
		if args[0] 
			@content << args[0] << "\n"
			
		else
			yield
			
		end
			
		@content << "</h2>\n"
	end
end

=begin
def missing_method(object)
	begin
		yield
	rescue NoMethodError
		object.h2
	end
end
=end