class SignUpOne < ActiveRecord::Base
    
    E_regex=/\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
    
    validates   :firstname,      :presence   =>  true
    
    validates   :lastname,       :presence   =>  true
    
    validates   :username,       :presence   =>  true
    
    validates   :city,           :presence   =>  true
    
    validates   :email,          :presence   =>  true
    validates   :email,          :format     =>  {:with => E_regex}
    
    validates   :password,              :presence   =>  true
    Pswrd   =   :password
    validates   :confirmpassword,       :presence   =>  true
    
    validate :validate_confirmpassword
    validate :validate_city
    
    validates   :password,              confirmation: true
    validates   :confirmpassword,       presence: true
    
    
    def validate_confirmpassword
        if (self.confirmpassword != self.password)
          errors.add(:password,         "password must equal confirmpassword")
          errors.add(:confirmpassword,  "password must equal confirmpassword")
        end
    end
    def validate_city
        if (self.city != ("lahore"||"karachi"||"islamabad"))
          errors.add(:city, "Enter a Valid city (eg: Lahore)")
        end
    end
end
