require "test_helper"

class ConansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conan = conans(:one)
  end

  test "should get index" do
    get conans_url, as: :json
    assert_response :success
  end

  test "should create conan" do
    assert_difference("Conan.count") do
      post conans_url, params: { conan: { character: @conan.character, gadget: @conan.gadget, vehicle: @conan.vehicle } }, as: :json
    end

    assert_response :created
  end

  test "should show conan" do
    get conan_url(@conan), as: :json
    assert_response :success
  end

  test "should update conan" do
    patch conan_url(@conan), params: { conan: { character: @conan.character, gadget: @conan.gadget, vehicle: @conan.vehicle } }, as: :json
    assert_response :success
  end

  test "should destroy conan" do
    assert_difference("Conan.count", -1) do
      delete conan_url(@conan), as: :json
    end

    assert_response :no_content
  end
end
