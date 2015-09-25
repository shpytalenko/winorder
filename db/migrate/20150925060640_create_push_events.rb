class CreatePushEvents < ActiveRecord::Migration
  def change
    create_table :push_events do |t|
      t.hstore :data
      t.hstore :body

      t.timestamps null: false
    end
  end
end
