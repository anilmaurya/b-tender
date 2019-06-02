class AddBlockchainFieldToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :blockchain_address, :string
    add_column :users, :public_key, :string
    add_column :users, :private_key, :string
  end
end
