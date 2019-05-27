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



  before_save :downcase_email
  before_create :generate_confirmation_instructions

  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false
  validates_format_of :email, with: /@/


 def downcase_email
   self.email = self.email.delete(' ').downcase
 end

 def generate_confirmation_instructions
   self.confirmation_token = SecureRandom.hex(10)
   self.confirmation_sent_at = Time.now.utc
 end
end
