class CreateRepos < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.string :path
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
