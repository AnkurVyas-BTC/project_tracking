class AddBudgetAmountToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :budget_amount, :integer
  end
end
