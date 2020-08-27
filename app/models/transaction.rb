class Transaction < ApplicationRecord
  validates_uniqueness_of :from, :to
end
