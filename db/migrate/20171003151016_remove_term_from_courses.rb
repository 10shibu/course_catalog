class RemoveTermFromCourses < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses, :term, :string
  end
end
