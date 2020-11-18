class Student < ApplicationRecord
  self.ignored_columns = %w(class)
end
