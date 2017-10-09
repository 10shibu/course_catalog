class AddIdentToInstructors < ActiveRecord::Migration[5.1]
  def change
    add_column :instructors, :ident, :integer
  end
end
