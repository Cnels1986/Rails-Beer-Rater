require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'beer_rater/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", beers_path
    assert_select "a[href=?]", breweries_path
    assert_select "a[href=?]", locations_path
  end
end
