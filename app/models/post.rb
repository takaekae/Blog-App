class Post < ApplicationRecord
    validates :title, :name, presence:true
    validates :description, length: { minimum: 30 }
    validates :published_at, presence:true
 
end
