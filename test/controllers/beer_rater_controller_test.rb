require 'test_helper'

class BeerRaterControllerTest < ActionDispatch::IntegrationTest
  def setup
      @base_title = "The Rails Beer Rater"
    end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get beers" do
    get beers_path
    assert_response :success
    assert_select "title", "Beers | #{@base_title}"
  end

  test "should get breweries" do
    get breweries_path
    assert_response :success
    assert_select "title", "Breweries | #{@base_title}"
  end

  test "should get locations" do
    get locations_path
    assert_response :success
    assert_select "title", "Locations | #{@base_title}"
  end

end
