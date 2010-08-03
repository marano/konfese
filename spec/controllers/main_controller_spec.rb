require 'spec_helper'

describe MainController do

  it 'should have a main page' do
    get :index
    response.should render_template(:index)
  end
end
