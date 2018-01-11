require './spec/spec_helper'

describe Corporation do
  let(:player) { Player.new 1, 'Test' }
  let(:market) { SharePrice.initial_market }
  let(:share_price) { market[6] }
  let(:company) { Company.new player, *(['BME'].concat Company::COMPANIES['BME']) }
  let(:company2) { Company.new player, *(['MHE'].concat Company::COMPANIES['MHE']) }
  subject { Corporation.new 'Bear', company, share_price, market }

  # don't really want lazy eval here
  # if player evals before corp, cash will be wrong
  before :each do
    subject
  end

  describe '#buy_company' do
    let(:company_to_buy) { Company.new player, *(['BSE'].concat Company::COMPANIES['BSE']) }

    it 'cash gets removed' do
      expect { subject.buy_company company_to_buy, 10 }.to change { subject.cash }.by(-10)
    end

    it 'adds company to companies' do
      expect(subject.companies.find { |c| c == company_to_buy }).to be_nil
      subject.buy_company company_to_buy, 10
      expect(subject.companies.find { |c| c == company_to_buy }).to eq(company_to_buy)
    end

    it 'removes company from seller' do
      player.companies << company_to_buy
      expect { subject.buy_company company_to_buy, 10}.to change { player.companies.size }.by(-1)
    end
  end

  describe '#can_buy_shares' do
    it 'should return true if bank shares is not empty' do
      expect(subject.can_buy_share?).to eq(true)
    end
  end

  describe '#bankrupt' do
    it 'company is not bankrupt' do
      expect(subject.bankrupt?).to eq(false)
    end
  end

  describe "#issue_share" do
    it "can issue a share" do
      expect(subject.can_issue_share?).to be(true)
    end

    it "adds money to cash" do
      expect { subject.issue_share }.to change { subject.cash }.by(9)
    end

    it "reduces the number of available shares" do
      expect { subject.issue_share }.to change { subject.shares.size }.by(-1)
    end
  end

  describe '#close_company' do
    it 'raises if last company' do
      expect { subject.close_company company }.to raise_error(GameException)
    end

    it 'removes the company from the corporation.' do
      subject.companies << company2
      expect { subject.close_company company }.to change { subject.companies.size }.by(-1)
    end
  end

  describe '#collect income' do
    it 'increases cash' do
      expect(subject.companies.size).to eq(1)
      expect { subject.collect_income }.to change { subject.cash }.by(1)
    end
  end

  describe '#pay_dividend' do
    it 'should decrease corporation cash' do
      expect { subject.pay_dividend 1, [player] }.to change { subject.cash }.by(-2)
    end

    it 'should not pay out more than cash on hand' do
      expect { subject.pay_dividend 100, [player] }.to raise_error(GameException)
    end

    it 'should not pay out more than 1/3 share price' do
      expect { subject.pay_dividend 4, [player] }.to raise_error(GameException)
    end

    it 'should increase player cash' do
      expect { subject.pay_dividend 3, [player] }.to change { player.cash }.by(3)
    end
  end

  describe '#max_dividend' do
    it 'is 1/3 ceil of share price' do
      expect(subject.max_dividend).to eq(3)
    end

    it 'is not more than total cash' do
      subject.cash = 5
      expect(subject.max_dividend).to eq(2)
    end
  end

  describe '#book_value' do
    it 'is worth some money' do
      expect(subject.book_value).to eq(20)
    end
  end

  describe '#market_cap' do
    it 'returns a value' do
      expect(subject.market_cap).to eq(20)
    end
  end

  describe '#prev_share_price' do
    it 'should find the prev price' do
      expect(subject.prev_share_price).to have_attributes(index: 5, price: 9)
    end
  end

  describe '#next_share_price' do
    it 'should find the next price' do
      expect(subject.next_share_price).to have_attributes(index: 7, price: 11)
    end
  end

end
