class AddIsDroppedOutToCandidate < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :is_dropped_out, :boolean, default: false
  end
end
