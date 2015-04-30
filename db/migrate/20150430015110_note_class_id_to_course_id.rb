class NoteClassIdToCourseId < ActiveRecord::Migration
  def change
    rename_column :notes, :class_id, :course_id
  end
end
