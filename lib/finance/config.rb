# frozen_string_literal: true

module Finance
  mattr_accessor :eps, default: '1.0e-16'
  mattr_accessor :guess, default: 1.0
  mattr_accessor :business_days, default: false
  mattr_accessor :periodic_compound, default: false

  def self.configure
    yield self
  end
end
