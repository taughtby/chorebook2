class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :points, :due_date
end
