class CreateBlagues < ActiveRecord::Migration[6.1]
  def change
    create_table :blagues do |t|
      t.string :content

      t.timestamps
    end
  end
end
