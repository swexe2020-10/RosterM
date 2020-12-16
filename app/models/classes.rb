class Classess < ApplicationRecord
    
    scope :get_by_name, ->(name) {
where("name like ?", "%#{name}%")}
    
end
