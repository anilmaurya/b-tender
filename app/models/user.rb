class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :create_blockchain_account

  def create_blockchain_account
    address, public_key_hex, private_key_hex = generate_address
    self.update_attributes(blockchain_address: address,
                           public_key: private_key_hex,
                           private_key: public_key_hex)
  end

  def generate_address
    new_key = Eth::Key.new
    return new_key.address.downcase, new_key.public_hex, new_key.private_hex
  end
end
