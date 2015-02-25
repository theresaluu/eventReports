class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|

      t.datetime :start_date
      t.datetime :end_date
      t.string :event_type

      t.timestamps
    end
  end
end
