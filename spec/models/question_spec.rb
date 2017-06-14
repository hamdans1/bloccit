require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) {Question.create!(title:"What about Bob?", body:"Seriously, what about Bob?",resolved:false)}
  
  describe "attributes" do
      it "has title, body, and resolved attributes" do
          expect(question).to have_attributes(title:"What about Bob?", body:"Seriously, what about Bob?",resolved:false)
      end
  end
  
end
