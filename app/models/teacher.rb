class Teacher < ApplicationRecord
   
    validates :uid, presence: true, uniqueness: :true
   
    validates :password, presence: true ,confirmation: true 
    
     attr_accessor :password, :password_confirmation
    
    def password=(val)
        if val.present?
            self.pass = BCrypt::Password.create(val)
        end
        @password = val
    end
    
    
    def self.authenticate(uid, pass)
        teacher = find_by(uid: uid)
        if teacher and BCrypt::Password.new(teacher.pass) == pass
            true
        else
            false
        end
    end
    
    
end
