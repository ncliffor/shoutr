class CreateImageSubjects < ActiveRecord::Migration
  def change
    create_table :image_subjects do |t|
      t.string :url

      t.timestamps
    end
  end
end
