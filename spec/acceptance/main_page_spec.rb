require 'spec_helper'

describe 'main page' do
  before { visit root_path }
  context 'submiting a new secret' do
    before do
      fill_in 'post[body]', :with => 'My secret.'
      click 'Post'
    end
    it 'should display the new secret' do
      page.should have_content 'My secret.'
    end
  end
end

