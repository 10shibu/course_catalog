class RemoveIdentFromCourses < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses, :ident, :string
  end
end
