# == Schema Information
#
# Table name: pictures
#
#  id         :bigint           not null, primary key
#  caption    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :bigint
#
# Foreign Keys
#
#  fk_rails_...  (post_id => posts.id)
#
FactoryBot.define do
  factory :picture do
    post_id { "" }
    caption { "MyString" }
  end
end