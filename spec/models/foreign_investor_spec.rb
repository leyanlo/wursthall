require './spec/spec_helper'

describe ForeignInvestor do
  let(:player) { Player.new 1, 'Test' }
  let(:company1) { Company.all['BME'].dup }
  let(:company2) { Company.all['AKE'].dup }
  let(:share_price) { SharePrice.initial_market[6] } # 10, 6
  let(:corporation) { Corporation.new 'Android', company1, share_price, SharePrice.initial_market }
  subject { ForeignInvestor.new }

  it 'should init' do
    expect(subject).not_to be_nil
  end

  describe '#purchase_companies' do
    it "should buy only one company if it has 5 dollars" do
      game = double('Game', companies: [company1, company2], name: '')
      company1.owner = game
      company2.owner = game
      subject.cash = 3
      expect { subject.purchase_companies game.companies }.to change { subject.companies.size }.by(1)
    end

    it 'should not buy anything if it does not have enough money.' do
      game = double('Game', companies: [company1, company2], name: '')
      company1.owner = game
      company2.owner = game
      subject.cash = 0
      expect { subject.purchase_companies game.companies }.to change { subject.companies.size }.by(0)
    end

    it ' should buy the cheapest company even when out of order' do
      game = double('Game', companies: [company2, company1], name: '')
      company1.owner = game
      company2.owner = game
      subject.cash = 3
      subject.purchase_companies game.companies
      expect(game.companies).to include(*company2)
      expect(game.companies).not_to include(*company1)
    end
  end
end
