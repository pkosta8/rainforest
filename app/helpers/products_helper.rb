module ProductsHelper

  def dollars(amount)
    price_in_dollars = amount.to_f / 100
    sprintf("$%.2f", price_in_dollars)
  end
  #
  # def ISBN.ten(amount)
  #   ten_digit = amount.to_f / 10
  #   sprintf("$%.2f", ten_digit)
  # end

end
