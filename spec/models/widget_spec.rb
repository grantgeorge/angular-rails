require 'rails_helper'

RSpec.describe Widget, type: :model do

  let(:widget) { build(:widget) }

  it "has a valid factory" do
    expect(widget).to be_valid
  end

  describe "#name" do
    it "is required" do
      widget.name = nil
      expect(widget).to be_invalid
    end
  end

end
