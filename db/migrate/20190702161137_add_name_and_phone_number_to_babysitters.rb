class AddNameAndPhoneNumberToBabysitters < ActiveRecord::Migration[6.0]
  def change
    add_column :babysitters, :name, :string
    add_column :babysitters, :phone_number, :string
  end
end
