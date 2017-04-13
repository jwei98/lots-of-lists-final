class Contact < ActiveRecord::Base

    validates :name,  :presence => true
    validates :number, :presence => true,
                      :length => { :minimum => 12 }
   
    def self.search(search)
      where("name LIKE ?", "%#{search}%") 
    end

end