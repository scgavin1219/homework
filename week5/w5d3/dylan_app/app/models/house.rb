class House < ApplicationRecord
    has_many(
        :people, 
        class_name: 'House',
        address: :address, 
        foreign_key: :house_id,
        primary_key: :id)
        
end