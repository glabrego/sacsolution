class Solicitation < ActiveRecord::Base
  validates :subject, :content, presence: true
end
