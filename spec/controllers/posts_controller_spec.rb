describe PostsController do
  
  context 'creating a new post' do
    before { post :create, :post => {:body => 'My secret.'} }
    it 'should save the new post' do
      Post.count.should be 1
    end
    it 'should go to main page' do
      response.should redirect_to root_path
    end
  end
end

