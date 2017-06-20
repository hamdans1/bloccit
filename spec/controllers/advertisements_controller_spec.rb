require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do
  let(:my_advertisement) {Advertisement.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 150)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_advertisement.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "increases the number of Advertisement by 1" do
      expect{post :create, post: {title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 200}}.to change(Advertisement,:count).by(1)
    end
    
    it "assigns the new advertisement to @advertisement" do
      post :create, post: {title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 200}
      expect(assigns(:advertisement)).to eq Advertisement.last
    end
    
    it "redirects to the new advertisement" do
      post :create, post: {title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 200}
      expect(response).to redirect_to Advertisement.last
    end
  end

end
