class CreateTextSubjects < ActiveRecord::Migration
  def change
    create_table :text_subjects do |t|
      t.string :body

      t.timestamps
    end
  end
end
