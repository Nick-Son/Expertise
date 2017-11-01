class Message < ApplicationRecord
  belongs_to :sender
  belongs_to :conversation
end
