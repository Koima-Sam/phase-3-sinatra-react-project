class CreateSavedScholarships < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_scholarships do |t|
      t.integer :scholarship_id
      t.integer :user_id
    end
  end
end
