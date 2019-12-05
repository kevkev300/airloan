class ChangeStatusDefaultInLoans < ActiveRecord::Migration[5.2]
  def change
    change_column_default :loans, :status, "pending"
  end
end
