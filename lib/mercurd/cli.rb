require 'thor'

require 'active_support'
require 'active_support/core_ext/object'
require 'mercurd/generators/feature'

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

    desc "requirements", "Install Mercurd Deps"
    def requirements
      `brew install cloc`
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

    desc "generate [ENTITY]", "Cucumber features generator"
    def generate(entity, name)
      Mercurd::Generators::Feature.start([entity, name])
    end
  end
end
