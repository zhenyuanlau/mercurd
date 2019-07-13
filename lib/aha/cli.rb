require 'thor'

module Aha
  class CLI < Thor
    desc "Guide", "Aha, A guide."
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
