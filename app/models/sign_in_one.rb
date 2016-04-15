class SignInOne < ActiveRecord::Base
    validates   :name,      :presence   =>  true
    validates   :password,  :presence   =>  true
    validates   :password,  uniqueness: { case_sensitive: true }
    
    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
    end
end
