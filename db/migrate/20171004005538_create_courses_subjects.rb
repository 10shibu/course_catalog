class CreateCoursesSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :courses_subjects do |t|
      t.references :course, foreign_key: true
      t.references :subject, foreign_key: true
    end
  end
end
