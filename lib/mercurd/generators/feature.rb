require 'thor/group'

module Mercurd
  module Generators
    class Feature < Thor::Group
      include Thor::Actions
  
      argument :entity, type: :string
      argument :name, type: :string

      def create_directory
        empty_directory(entity.pluralize)
      end

      def copy_feature
        template("feature.txt", "#{entity.pluralize}/#{name}.feature")
      end

      def self.source_root
        File.dirname(__FILE__) + "/feature"
      end
    end
  end
end