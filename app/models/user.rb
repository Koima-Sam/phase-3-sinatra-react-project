class User < ActiveRecord::Base
    has_many :saved_scholarships
end