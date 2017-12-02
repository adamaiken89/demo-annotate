# == Schema Information
#
# Table name: messages
#
#  id              :integer          not null, primary key
#  recipient       :string
#  recipient_email :string
#  subject         :string
#  content         :text
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_messages_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Message < ApplicationRecord
  belongs_to :user
end
