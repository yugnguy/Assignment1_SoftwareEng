class Numeric
  @@currencies = {'dollar' => 1, 'yen' => 0.012, 'euro' => 1.3}

  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub(/s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
    singular_currency = currency.to_s.gsub(/s$/, '')
    self * @@currencies[singular_currency]
  end
end

puts 5.dollars.in(:euro)
puts (1.euro - 50.yen).in(:dollars)