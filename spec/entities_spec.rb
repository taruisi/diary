require_relative '../lib/entities'

describe Entity do
  describe "Creation" do
    let(:entity) { Entity.new('2015/10/10') }
    it 'Generated from string' do
      expect(entity.dayspec).to eq "2015/10/10"
    end
    it 'arraynized correctly' do
      expect(entity.to_a.size).not_to eq 0
    end
  end
end
