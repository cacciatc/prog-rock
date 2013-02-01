require 'thread'
require 'json'
require 'curses'

module ProgRock
    GLYPHS = {}
    class Concert
        def initialize
	    path = File.join(File.dirname(File.expand_path(__FILE__)), 'arts-and-farts/')
            Dir.glob(path + "*.json").each do |file|
		glyph = JSON.parse File.open(file,'r').readlines.join
                GLYPHS[glyph["name"].to_sym] = glyph
            end
        end
	def render_fancy(frame,dt)
		frame.each_with_index do |sub_frame,i|
			Curses::setpos(i,1)
			Curses::addstr(sub_frame.join)
		end
		Curses::refresh
		sleep dt
	end
	def render_plain(frame,dt)
		print "\r#{frame}"
	        sleep dt	
	end
        def play(glyph_name, dt = 0.15)
            "#{glyph_name} not found.\n" if not GLYPHS.include? glyph_name
            frames = GLYPHS[glyph_name]["frames"]
	    
            	display_thread = Thread.new do
	    		begin
               			while true
               	     			frames.each do |frame|
               	     				if GLYPHS[glyph_name]["height"] > 1
							render_fancy frame, dt
						else
							render_plain frame, dt
						end
			    		end
               	 		end
               	 		print "\r"
	    		ensure
				puts "here"
				Curses::close_screen
	    		end    
        	end
	   	display_thread.join
	end
        def ls
            GLYPHS.keys.each do |key|
                puts key
            end
        end
    end
end
