require 'thread'
require 'json'

module ProgRock
    GLYPHS = {}
    class Concert
        def initialize
		require 'pry'
		binding.pry
            Dir.glob("arts-and-farts/*.json").each do |file|
		glyph = JSON.parse File.open(file,'r').readlines.join
                GLYPHS[glyph["name"].to_sym] = glyph["frames"]
            end
        end
        def play glyph_name, dt = 0.15
            "#{glyph_name} not found.\n" if not GLYPHS.include? glyph_name
            frames = GLYPHS[glyph_name]
            Thread.new do
                while true
                    frames.each do |frame|
                        print "\r#{frame}"
                        sleep dt
                    end
                end
                print "\r"
            end
        end
        def ls
            GLYPHS.keys.each do |key|
                puts key
            end
        end
    end
end
