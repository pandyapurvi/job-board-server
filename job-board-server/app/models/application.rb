# == Schema Information
#
# Table name: applications
#
#  id           :bigint(8)        not null, primary key
#  job_id       :integer
#  seeker_id    :integer
#  name         :text
#  resume       :text
#  cover_letter :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Application < ApplicationRecord
end
