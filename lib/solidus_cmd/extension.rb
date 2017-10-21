require 'thor'
require 'thor/group'

module SolidusCmd
  class Extension < Thor::Group
    include Thor::Actions

    desc "builds a solidus extension"
    argument :file_name, type: :string, desc: 'rails app_path', default: '.'

    class_option :template

    def self.source_root
      File.expand_path('../', __FILE__)
    end

    def generate
      template = options[:template] ? options[:template] : 'template.rb'

      find_in_source_paths(template)

      use_prefix 'solidus_'

      empty_directory file_name

      apply template
    end

    no_tasks do
      def class_name
        Thor::Util.camel_case file_name
      end

      def solidus_version
        '~> 1.0'
      end

      def use_prefix(prefix)
        unless file_name =~ /^#{prefix}/
          @file_name = prefix + Thor::Util.snake_case(file_name)
        end
      end
    end
  end
end
