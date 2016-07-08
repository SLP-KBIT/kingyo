class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default:false
  end
  def user_params
  params.require(:user).permit(:name, :email, :password)
  end
end
