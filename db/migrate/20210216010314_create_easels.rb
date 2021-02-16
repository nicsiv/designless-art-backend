class CreateEasels < ActiveRecord::Migration[6.0]
  def change
    create_table :easels do |t|
      t.string :name
      t.string :image
      t.references :user_id

      t.timestamps
    end
  end
end
