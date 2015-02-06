class User < ActiveRecord::Base
  has_many :answers
  has_many :cards, through: :answers
  has_many :decks, through: :cards
end
