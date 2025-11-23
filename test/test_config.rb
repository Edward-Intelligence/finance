# frozen_string_literal: true

require_relative 'test_helper'

describe 'Cashflows' do
  describe 'default values' do
    it 'should have default values' do
      assert_equal D('1.0'), D(Finance.guess.to_s)
      assert_equal D('1.0e-16'), D(Finance.eps)
      assert_equal false, Finance.business_days
      assert_equal false, Finance.periodic_compound
    end
  end

  describe 'overriding defaults' do
    before do
      Finance.guess = 0.25
      Finance.eps = '1.0e-9'
      Finance.business_days = true
      Finance.periodic_compound = true
    end

    after do
      Finance.guess = 1.0
      Finance.eps = '1.0e-16'
      Finance.business_days = false
      Finance.periodic_compound = false
    end

    it 'should be permanent' do
      assert_equal 0.25, Finance.guess
      assert_equal '1.0e-9', Finance.eps
      assert_equal true, Finance.business_days
      assert_equal true, Finance.periodic_compound
    end
  end
end
