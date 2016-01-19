require 'test_helper'

class UserStocksControllerTest < ActionController::TestCase
  setup do
    @user = User.find_by_id('1')
    @stock = Stock.new_from_lookup("AAPL")
    @user_stock = UserStock.create(user: @user, stock: @stock)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:user_stocks)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create user_stock" do
  #   assert_difference('UserStock.count') do
  #     post :create, user_stock: { stock_id: @user_stock.stock_id, user_id: @user_stock.user_id }
  #   end

  #   assert_redirected_to user_stock_path(assigns(:user_stock))
  # end

  # test "should show user_stock" do
  #   get :show, id: @user_stock
  #   assert_response :success
  # end

end
