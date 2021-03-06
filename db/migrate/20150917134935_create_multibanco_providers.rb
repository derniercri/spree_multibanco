class CreateMultibancoProviders < ActiveRecord::Migration
  def change
    create_table :spree_multibanco_providers do |t|
      t.string :name
      t.string :entity
      t.string :subentity
      t.boolean :active, :default => true
      t.timestamps
    end
    add_index :spree_multibanco_providers, [:entity, :subentity], :unique => true
  end
end
