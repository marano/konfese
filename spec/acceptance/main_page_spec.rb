require 'spec_helper'

describe 'main page' do
  before { visit root_path }
  context 'submiting a new post' do
    before do
      fill_in 'post[body]', :with => 'My secret.'
      click 'Post'
    end
    it 'should save the new post' do
      Post.count.should be 1
    end
  end
end

