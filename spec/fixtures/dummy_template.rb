source_paths.unshift(File.expand_path('../../../lib/solidus_cmd/templates/extension', __FILE__))

template 'extension.gemspec', "#{file_name}/#{file_name}.gemspec"
