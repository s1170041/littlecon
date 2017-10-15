class CreateEnquetes < ActiveRecord::Migration[5.1]
  def change
    create_table :enquetes do |t|

      t.timestamps
    end
  end
end
