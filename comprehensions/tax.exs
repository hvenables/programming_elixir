defmodule Tax do
  def apply_to_order(orders, tax_rates) do
    for order <- orders, do:
      order ++
        [total_amount: ((tax_rates[order[:ship_to]] || 0)  + 1) * order[:net_amount]]
  end
end
