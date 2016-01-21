class CreateDropTeachtogether < ActiveRecord::Migration
  def change
    drop_table :teachtogethers do |t|
    end
  end
end
