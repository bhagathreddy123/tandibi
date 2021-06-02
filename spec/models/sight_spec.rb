# == Schema Information
#
# Table name: sights
#
#  id            :bigint           not null, primary key
#  activity_type :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  place_id      :bigint
#
# Indexes
#
#  index_sights_on_place_id  (place_id)
#
require 'rails_helper'

RSpec.describe Sight, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
