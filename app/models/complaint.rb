class Complaint < ActiveRecord::Base
  validates :subject, :complaint_type, :content, presence: true
end
