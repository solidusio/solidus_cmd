source_paths.unshift(File.expand_path('../templates/extension', __FILE__))

directory 'app', "#{file_name}/app"
directory 'lib', "#{file_name}/lib"
directory 'bin', "#{file_name}/bin"

template 'extension.gemspec', "#{file_name}/#{file_name}.gemspec"
template 'Gemfile', "#{file_name}/Gemfile"
template 'gitignore', "#{file_name}/.gitignore"
template 'LICENSE', "#{file_name}/LICENSE"
template 'Rakefile', "#{file_name}/Rakefile"
template 'README.md', "#{file_name}/README.md"
template 'config/routes.rb', "#{file_name}/config/routes.rb"
template 'config/locales/en.yml', "#{file_name}/config/locales/en.yml"
template 'rspec', "#{file_name}/.rspec"
template 'spec/spec_helper.rb.tt', "#{file_name}/spec/spec_helper.rb"
template 'rubocop.yml', "#{file_name}/.rubocop.yml"
template 'travis.yml', "#{file_name}/.travis.yml"
