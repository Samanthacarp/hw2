class CreateHollywoods < ActiveRecord::Migration[7.1]
  def change
    create_table :hollywoods do |t|

      t.timestamps
    end
  end
end
