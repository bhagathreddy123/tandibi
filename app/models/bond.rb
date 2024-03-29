# == Schema Information
#
# Table name: bonds
#
#  id         :bigint           not null, primary key
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  friend_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_bonds_on_user_id_and_friend_id  (user_id,friend_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (friend_id => users.id)
#  fk_rails_...  (user_id => users.id)
#
class Bond < ApplicationRecord
	STATES = {
		REQUESTIG = "requesting",
		FOLLOWING = "following",
		BLOCKING = "blocking",

	}.freeze

	validates :state, inclusion: { in: STATES }
	belongs_to :user
	belongs_to :friend, class_name: "User"
end
