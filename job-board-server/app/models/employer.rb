# == Schema Information
#
# Table name: employers
#
#  id           :bigint(8)        not null, primary key
#  company_name :text
#  compamy_type :text
#  size         :text
#  no_employee  :integer
#  description  :text
#  city         :text
#  website      :text
#  vacancy      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Employer < ApplicationRecord
  has_many :jobs
  has_one :user_id
end
