class AddDistrictIdToOffices < ActiveRecord::Migration[5.1]
  def change
    add_column :offices, :district_id, :integer
  end
end