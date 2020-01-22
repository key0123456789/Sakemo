require 'rails_helper'

describe Feeling do
  describe '#create' do

    it "is invalid without flavor" do
      feeling = build(:feeling, flavor: "")
      feeling.valid?
      expect(feeling.errors[:flavor])
    end

    it "is invalid without aroma" do
      feeling = build(:feeling, aroma: "")
      feeling.valid?
      expect(feeling.errors[:aroma])
    end

    it "is invalid without body" do
      feeling = build(:feeling, body: "")
      feeling.valid?
      expect(feeling.errors[:body])
    end

    it "is invalid without sharp" do
      feeling = build(:feeling, sharp: "")
      feeling.valid?
      expect(feeling.errors[:sharp])
    end
    
    it "is invalid without favorite" do
      feeling = build(:feeling, favorite: "")
      feeling.valid?
      expect(feeling.errors[:favorite])
    end

  end
end