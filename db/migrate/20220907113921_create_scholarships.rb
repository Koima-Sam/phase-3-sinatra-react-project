class CreateScholarships < ActiveRecord::Migration[6.1]
  def change
    create_table :scholarships do |t|
      t.string :name
      t.string :organizer
      t.string :description
      t.string :link
      t.string :deadline
    end
  end
end
