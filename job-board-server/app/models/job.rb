# == Schema Information
#
# Table name: jobs
#
#  id           :bigint(8)        not null, primary key
#  title        :text
#  pod          :date
#  description  :text
#  level        :text
#  company_type :text
#  salary       :integer
#  duration     :text
#  cod          :date
#  city         :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Job < ApplicationRecord
  belongs_to :employer, :optional => true
end
