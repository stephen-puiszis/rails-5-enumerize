require "rails_helper"

RSpec.describe Goal do

  describe "validations" do
    subject do
      described_class.new
    end

    it { is_expected.to be_valid }
    it { is_expected.to validate_presence_of(:target_score) }
    it { is_expected.to validate_presence_of(:actual_score) }
    it { is_expected.to validate_numericality_of(:target_score).is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:actual_score).is_greater_than_or_equal_to(0) }
    it { is_expected.to have_db_column(:actual_score).of_type(:integer).with_options(null: false, default: 0) }
    it { is_expected.to have_db_column(:target_score).of_type(:integer).with_options(null: false, default: 0) }

    describe "after persistence" do
      subject do
        described_class.create
      end

      it { is_expected.to be_valid }
    end
  end
end
