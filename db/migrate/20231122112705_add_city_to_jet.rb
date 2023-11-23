class AddCityToJet < ActiveRecord::Migration[7.1]
  def change
    add_column :jets, :city, :string
  end
end
