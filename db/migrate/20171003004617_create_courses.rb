class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :term
      t.string :ident
      t.string :name

      t.timestamps
    end
  end
end
