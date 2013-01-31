require 'thread'

module ProgRock
    GLYPHS = {
        :tres_dots     => ['.','..','...'],
        :bouncing_ball => ['(*---------)','(-*--------)','(--*-------)','(---*------)',
                           '(----*-----)','(-----*----)','(------*---)','(-------*--)',
                           '(--------*-)','(---------*)','(--------*-)','(-------*--)',
                           '(------*---)','(-----*----)','(----*-----)','(---*------)',
                           '(--*-------)','(-*--------)']
    }
    class Concert
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
