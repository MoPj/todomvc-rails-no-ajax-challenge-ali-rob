class Task < ActiveRecord::Base
  belongs_to :list

  # for recursive tasks called steps
  belongs_to :parent, class_name: "Task"
  has_many :steps, class_name: "Task", foreign_key: :parent_id
end
