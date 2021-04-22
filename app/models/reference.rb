class Reference < ApplicationRecord
  belongs_to :destination, optional: true
  validates :ref_code, presence: true
end
