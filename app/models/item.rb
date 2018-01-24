class Item < ApplicationRecord
  belongs_to :merchant
  has_many :invoice_items
  has_many :invoices, through: :invoice_items

  def self.most_revenue(quantity)
    select("items.*, SUM(invoice_items.quantity * invoice_items.unit_price) AS revenue")
      .joins(:invoice_items)
      .group("items.id")
      .order("revenue DESC, items.id ASC")
      .limit(quantity)
  end
end
