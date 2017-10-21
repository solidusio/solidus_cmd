require 'spec_helper'

RSpec.describe SolidusCmd::Extension do
  it 'generate skeleton' do
    run_extension
    dir = '../tmp/solidus_dummy_ext'
    expect(Dir.exist?(dir)).to be(true)
    expect(File.exist?("#{dir}/solidus_dummy_ext.gemspec")).to be(true)
    expect(File.exist?("#{dir}/Gemfile")).to be(true)
    expect(File.exist?("#{dir}/Rakefile")).to be(true)
  end

  it 'allow use custom template' do
    template_path = '../../spec/fixtures/dummy_template.rb'
    run_extension(['dummy', '--template', template_path])
    dir = '../tmp/solidus_dummy'
    expect(Dir.exist?(dir)).to be(true)
    expect(File.exist?("#{dir}/solidus_dummy.gemspec")).to be(true)
    expect(File.exist?("#{dir}/Gemfile")).to be(false)
  end

  it 'not create extension when template path is invalid' do
    run_extension(['dummy', '--template', '/invalid/path'])
    expect(Dir.exist?('../tmp/solidus_dummy')).to be(false)
  end
end
