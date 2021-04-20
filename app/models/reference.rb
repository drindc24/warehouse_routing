class Reference < ApplicationRecord
  belongs_to :destination
  validates :ref_code, presence: true
end
