class CreateBabysitters < ActiveRecord::Migration[6.0]
  def change
    create_table :babysitters do |t|

      t.timestamps
    end
  end
end
