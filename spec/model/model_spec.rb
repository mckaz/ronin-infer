require 'ronin/model/model'

require 'spec_helper'
require 'model/classes/basic_model'
require 'model/classes/custom_model'

describe Model do
  before(:all) do
    BasicModel.auto_migrate!
    CustomModel.auto_migrate!
  end

  it "should have a default repository name" do
    BasicModel.default_repository_name.should == Model::REPOSITORY_NAME
  end

  it "should allow creating new instances of the model" do
    resource = BasicModel.new(:name => 'joe')

    resource.name.should == 'joe'
  end

  it "should call initialize when creating new instances of the model" do
    resource = CustomModel.new(:name => 'joe')

    resource.name.should == 'joe'
    resource.var.should == 2
  end

  it "should still call initialize when loading from the database" do
    CustomModel.create(:name => 'bob')

    resource = CustomModel.first
    resource.name.should == 'bob'
    resource.var.should == 2
  end
end
