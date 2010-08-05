require 'spec_helper'

describe MainController do
  context 'with a secret told' do
    before { Factory :post }
    context 'at the root page' do
      before { get :index }
      it 'should render the index template' do
        response.should render_template :index
      end
      it 'should assign secrets' do
        assigns[:posts].should_not be_empty
      end
    end
  end
end
