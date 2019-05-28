# == Schema Information
#
# Table name: seekers
#
#  id              :bigint(8)        not null, primary key
#  name            :text
#  emailid         :text
#  pnone           :integer
#  social_link     :text
#  resume          :text
#  cover_letter    :text
#  experience_year :integer
#  notice          :text
#  current_title   :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#

class Seeker < ApplicationRecord
  has_one :user
  has_many :applications
end
