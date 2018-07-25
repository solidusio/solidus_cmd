require 'spec_helper'

RSpec.describe "Extension Creation" do
  let(:ext_root) { File.expand_path('../../..', __FILE__) }
  let(:tmp_root) { "#{ext_root}/spec" }
  let(:build_dir) { "tmp" }
  let(:extension_name) { "test_extension" }
  let(:gemspec_name) { "solidus_#{extension_name}.gemspec" }

  before(:each) do
    system("cd #{tmp_root} && mkdir #{build_dir}")
  end

  after(:each) do
    system("cd #{tmp_root} && rm -rf #{build_dir}")
  end

  it "creates a new extension" do
    out = `cd #{tmp_root}/#{build_dir} && #{ext_root}/bin/solidus extension #{extension_name}`.to_s
    expect(out).to match(/#{gemspec_name}/)
  end
end
