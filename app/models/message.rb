class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :conversation

  validates :content, presence: true
  validates :conversation, presence: true
  validates :user, inclusion: { in: :users }
end
