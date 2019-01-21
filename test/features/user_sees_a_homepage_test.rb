require './test/test_helper'

class HomePageTest < CapybaraTestCase

  def test_user_can_see_the_homepage
    visit '/'

    # save_and_open_page
    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_user_can_see_error_page
    visit '/randompage.html'

    # save_and_open_page
    assert_equal 404, page.status_code
    assert page.has_content?("Page not found.")
  end

end
