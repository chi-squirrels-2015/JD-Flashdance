class Answer < ActiveRecord::Base
  belongs_to :card_id
  belongs_to :user_id
end
