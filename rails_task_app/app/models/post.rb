class Post < ApplicationRecord
  validates :title, presence: true
  validates :start_Day, presence: true
  validates :End_Day, presence: true
  validates :content, presence: true
end
