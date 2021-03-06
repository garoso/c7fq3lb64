class ExpensesController < ApplicationController
  def index
   @expenses = current_user.expenses
   if params[:concept].present?
     @expenses = @expenses.where("concept LIKE ?", "%#{params[:concept]}%")
    end
    if params[:category_id].present?
     @expenses = @expenses.where("category_id = ?", params[:category_id])
    end
  end
end
