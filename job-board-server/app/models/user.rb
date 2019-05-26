# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :text
#  email           :text
#  password_digest :text
#  employer        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  # validates :username, :presence => true, :uniqueness => true
  belongs_to :seeker, :optional=> true
  belongs_to :employer, :optional=> true
  validates :email, :presence => true, :uniqueness => true
end
