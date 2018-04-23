class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '') #M_M looks at the id, converts it to a string, converts it to singular
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(dst_currency)
    dst_currency = dst_currency.to_s.gsub(/s$/, '')
    self / @@currencies[dst_currency]
  end
end

# >> 1.dollar.in(:rupees)  ==> 1.dollar = self // :rupees = dst_currency

class String
  def palindrome?
    self.downcase.gsub(/\W+/, '') == self.downcase.reverse.gsub(/\W+/, '')
  end
end

module Enumerable
  def palindrome?
    self == self.reverse
  end
end

