# == Schema Information
#
# Table name: deliveries
#
#  id                    :integer          not null, primary key
#  arrival               :date
#  arrived               :boolean
#  description           :string
#  details               :text
#  supposed_to_arrive_on :date
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :integer
#
class Delivery < ApplicationRecord
  def time
    current_time = Time.now
    updated_time = self.updated_at
    time_difference_seconds = current_time - updated_time
    time_difference_minutes = time_difference_seconds / 60
    time_difference_minutes
  end
end
