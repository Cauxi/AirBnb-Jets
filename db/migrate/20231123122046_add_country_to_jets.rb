class AddCountryToJets < ActiveRecord::Migration[7.1]
  def change
    add_column :jets, :country, :string
  end
end
