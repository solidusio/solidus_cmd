require 'solidus_cmd/extension'

module ExtensionHelper
  include FileUtils

  def run_extension(args = ['dummy_ext'], config = {})
    clear_destination
    config.merge!(destination_root: '../tmp')
    SolidusCmd::Extension.start(args, config)
  end

  def clear_destination(dir = '../tmp')
    Dir.exist?(dir) ? rm_rf(dir) : nil
  end
end
