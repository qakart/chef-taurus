require 'spec_helper'

describe 'taurus::siege' do
  context 'ubuntu' do
    let(:runner) { ChefSpec::SoloRunner.new(CHEFSPEC_OPTS) }
    let(:node) { runner.node }
    let(:chef_run) { runner.converge(described_recipe) }

    installed_package = %w(siege)

    installed_package.each do |p|
      it "installs the package #{p}" do
        expect(chef_run).to install_package(p)
      end
    end
  end
end
