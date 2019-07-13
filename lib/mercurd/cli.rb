require 'thor'

module Mercurd
  class CLI < Thor
    desc "zen", "A guide."
    def zen
      puts <<-ZEN
                    Zen of Code Reading
        1. Read document first.
        2. Read code when have to.
        3. Read for writting code.
      ZEN
    end
  end
end
