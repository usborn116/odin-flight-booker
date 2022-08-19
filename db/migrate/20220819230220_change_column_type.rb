class ChangeColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column(:flights, :depart_id, :bigint)
    change_column(:flights, :arrival_id, :bigint)
  end
end
