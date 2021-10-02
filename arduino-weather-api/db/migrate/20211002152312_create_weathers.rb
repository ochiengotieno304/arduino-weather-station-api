class CreateWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :weathers do |t|
      t.string :humidity
      t.string :temperature
      t.string :index

      t.timestamps
    end
  end
end
