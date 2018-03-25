class CreateScraps < ActiveRecord::Migration
  def change
    create_table :scraps do |t|
      t.string :image
      t.timestamps
    end
  end
end
