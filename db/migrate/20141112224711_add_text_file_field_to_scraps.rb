class AddTextFileFieldToScraps < ActiveRecord::Migration
  def change
    add_column :scraps, :text_file, :string
  end
end
