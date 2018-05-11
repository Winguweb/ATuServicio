class CreateProvidersWithNewStructure < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :abbreviation
      t.string :website
      t.integer :affiliations
      t.integer :financed_affiliations
      t.text :communication_services
    end
    add_index :providers, :name
  end
end
