class ChangeNameToCompany < ActiveRecord::Migration
  def change
    rename_column :users, :name, :company
  end
end
