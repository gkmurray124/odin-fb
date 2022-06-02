class Post < ApplicationRecord
    belongs_to :poster,
    class_name: :User
end
