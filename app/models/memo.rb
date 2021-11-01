class Memo < ApplicationRecord
  validates :title, length: {minimum: 1}
end
