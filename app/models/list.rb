class List < ActiveRecord::Base
  belongs_to :user

  has_many :tasks
  has_many :steps, class_name: "Task"
end
