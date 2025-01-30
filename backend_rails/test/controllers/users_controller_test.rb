require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  fixtures :users
  test "should create user with valid params" do
    assert_difference("User.count", 1) do
      post users_url, params: { user: { username: "testuser", email: "test@example.com", password: "password" } }, as: :json
    end
    assert_response :created
    assert_equal "application/json; charset=utf-8", response.content_type
    assert_equal "testuser", JSON.parse(response.body)["username"]
    assert_equal "test@example.com", JSON.parse(response.body)["email"]
  end

  test "should not create user with invalid params" do
    assert_no_difference("User.count") do
      post users_url, params: { user: { username: nil, email: nil, password: nil } }, as: :json
    end
    assert_response :unprocessable_entity
    assert_equal "application/json; charset=utf-8", response.content_type
    assert_includes(JSON.parse(response.body)["errors"], "Username can't be blank")
    assert_includes(JSON.parse(response.body)["errors"], "Email can't be blank")
    assert_includes(JSON.parse(response.body)["errors"], "Password can't be blank")
  end

  test "should not create user with invalid email format" do
    assert_no_difference("User.count") do
      post users_url, params: { user: { username: "testuser", email: "invalidemail", password: "password" } }, as: :json
    end
    assert_response :unprocessable_entity
    assert_equal "application/json; charset=utf-8", response.content_type
    assert_includes(JSON.parse(response.body)["errors"], "Email is invalid")
  end

  test "should not create user with duplicated email" do
    #Create a first user to duplicate the email
    post users_url, params: { user: { username: "testuser", email: "test@example.com", password: "password" } }, as: :json
    assert_response :created

    assert_no_difference("User.count") do
      post users_url, params: { user: { username: "testuser", email: "test@example.com", password: "password" } }, as: :json
    end
    assert_response :unprocessable_entity
    assert_equal "application/json; charset=utf-8", response.content_type
    assert_includes(JSON.parse(response.body)["errors"], "Email has already been taken")
  end

  test "should search users by username (case-insensitive) and return users" do
    get "/users/searchBy/username/fixtureuser1", as: :json
    assert_response :ok
    assert_equal "application/json; charset=utf-8", response.content_type
    assert_equal 1, JSON.parse(response.body).length
    assert_equal "fixtureuser1", JSON.parse(response.body)[0]["username"]
    assert_equal "fixture1@example.com", JSON.parse(response.body)[0]["email"]

    get "/users/searchBy/username/fiXtuReUsEr1", as: :json
    assert_response :ok
    assert_equal 1, JSON.parse(response.body).length
    assert_equal "fixtureuser1", JSON.parse(response.body)[0]["username"]
    assert_equal "fixture1@example.com", JSON.parse(response.body)[0]["email"]
  end

  test "should search users by username and return empty array if not found" do
    get "/users/searchBy/username/nonexistentuser", as: :json
    assert_response :not_found
    assert_equal "application/json; charset=utf-8", response.content_type
    assert_equal [], JSON.parse(response.body)
  end
end