class AddEducationIdToCandidates < ActiveRecord::Migration[5.1]
  def change
    add_column :offices, :education_id, :integer
  end
end