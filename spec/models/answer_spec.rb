require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) {Question.create!(title:"What about Bob?", body:"Seriously, what about Bob?",resolved:false)}
  let(:answer) {Answer.create!(body:"We left him on the boat", question:question)}
  
  describe "attributes" do
    it "has attribute body" do
        expect(answer).to have_attributes(body:"We left him on the boat")
    end
  end
  
end
