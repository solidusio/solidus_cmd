require 'spec_helper'

RSpec.describe SolidusCmd::Extension do
  it 'generate skeleton' do
    run_extension
    dir = '../tmp/solidus_dummy_ext'
    expect(Dir.exist?(dir)).to be(true)
    expect(File.exist?("#{dir}/solidus_dummy_ext.gemspec")).to be(true)
    expect(File.exist?("#{dir}/Gemfile")).to be(true)
  end
end
