require 'thor'

require 'active_support'
require 'active_support/core_ext/object'

module Mercurd
  class CLI < Thor
    desc "zen", "The Zen of Code Reading"
    def zen
      puts <<-ZEN
        The Zen of Code Reading

        - Good first.
        - Document first.
        - When have to.
        - For writting.
      ZEN
    end

    desc "cloc [OPTIONS]", "The wrapper of github.com/AlDanial/cloc"
    def cloc(src = nil)
      cmd = `which cloc`
      puts "cloc not found" and return if cmd.blank?
      prefix =  "Count Lines of Code" 
      dir = src ? src : '.'
      ret = `cloc #{dir}`
      puts [prefix, ret].join("\n\n")
    end
  end
end
