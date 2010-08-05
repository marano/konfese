require 'spec_helper'

describe Post do
  it { should validate_presence_of :body }
  
  context 'when secrets are posted' do
    before do
      @first_secret = Factory :post
      @second_secret = Factory :post
    end
    it 'the one published later should come first' do
      Post.first.should == @second_secret
    end
  end
end
