class Saved_Scholarship < ActiveRecord::Base
    belongs_to :user
    belongs_to :scholarship
end