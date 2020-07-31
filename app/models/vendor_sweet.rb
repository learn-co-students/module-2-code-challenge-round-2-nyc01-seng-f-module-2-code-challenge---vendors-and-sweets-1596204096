class VendorSweet < ApplicationRecord
    belongs_to :sweets
    belongs_to :vendors

    validates :price, presence: true
    validates :price, :numericality => { :greater_than => 0 }
    validates :sweet_id, presence: true
    validates :vendor_id, presence: true
end
