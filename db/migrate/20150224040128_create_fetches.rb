class CreateFetches < ActiveRecord::Migration
  def change
    create_table :fetches do |t|
      t.string :url

      t.timestamps
    end
  end
end
