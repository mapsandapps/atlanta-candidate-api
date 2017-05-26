class RemoveMediaAndIssues < ActiveRecord::Migration[5.1]
  def change
    drop_table :issues
  end
end