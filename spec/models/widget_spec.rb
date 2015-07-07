require 'rails_helper'

RSpec.describe Widget, type: :model do
  before :each do
    @widget = create(:widget)
  end

  it "has a valid factory" do
    expect(@widget).to be_valid
  end
end
