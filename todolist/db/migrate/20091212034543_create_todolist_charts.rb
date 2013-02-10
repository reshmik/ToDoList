class CreateTodolistCharts < ActiveRecord::Migration
  def self.up
    create_table :todolist_charts do |t|
      t.string :name
      t.text :description
      t.date :duedate
      t.string :status
      t.string :priority

      t.timestamps
    end
  end

  def self.down
    drop_table :todolist_charts
  end
end
