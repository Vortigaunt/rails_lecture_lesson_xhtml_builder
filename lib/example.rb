require 'xhtml_builder'

b = XHTMLBuilder.new

#missing_method(b) do
	b.html do
	  b.head do
	    b.title("My Fancy Webpage")
	  end
	  b.body do
	    b.h1("Fancy Title")
		b.span do
			b.b("Error 1")
		end
	    b.p do
	     b.b("Bold words")
	      b.i("Followed by italic words")
	    end
		b.span("Error 2")
	    b.p("Paragraph without a block")
	    b.p do
		  "Has a string in a block"
	    end
	    b.div do
	      b.ul do
	        4.times do |i|
	          b.li("This is item nr #{i}")
	        end
	      end
	    end
	  end
	end
#end

puts b.content
