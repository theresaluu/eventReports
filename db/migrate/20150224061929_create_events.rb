class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :fetch, index: true
      t.belongs_to :report, index: true

      t.datetime :date
      t.string :push_event
      t.timestamps
    end
  end
end
