class Todo < ApplicationRecord
    

    #rails validations for a todo object
    validates :title, presence: true,length: {minimum: 3}
    validates :username, presence: true,length: {minimum: 3}

     # model association
  has_many :items, dependent: :destroy
   

end
