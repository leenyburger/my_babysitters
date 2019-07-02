class AddNameAndPhoneNumberToParents < ActiveRecord::Migration[6.0]
  def change
    add_column :parents, :name, :string
    add_column :parents, :phone_number, :string
  end
end
