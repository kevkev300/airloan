class AddSeekerBankAccountToLoans < ActiveRecord::Migration[5.2]
  def change
    add_column :loans, :seeker_bank_account, :string
  end
end
