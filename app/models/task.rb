class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :points, :due_date
  
  belongs_to :child
 
end
