class CreateParties < ActiveRecord::Migration[5.1]
  def change
    create_table :parties do |t|

      t.timestamps
    end
  end
end
