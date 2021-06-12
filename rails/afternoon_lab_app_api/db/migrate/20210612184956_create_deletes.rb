class CreateDeletes < ActiveRecord::Migration[6.1]
  def change
    create_table :deletes do |t|
      t.string :title
      t.boolean :completed

      t.timestamps
    end
  end
end
