require "application_system_test_case"

class FixturesTest < ApplicationSystemTestCase
  setup do
    @fixture = fixtures(:one)
  end

  test "visiting the index" do
    visit fixtures_url
    assert_selector "h1", text: "Fixtures"
  end

  test "should create fixture" do
    visit fixtures_url
    click_on "New fixture"

    fill_in "League", with: @fixture.league_id
    fill_in "Match date", with: @fixture.match_date
    fill_in "Match time", with: @fixture.match_time
    fill_in "Opponent", with: @fixture.opponent
    fill_in "Table", with: @fixture.table_id
    click_on "Create Fixture"

    assert_text "Fixture was successfully created"
    click_on "Back"
  end

  test "should update Fixture" do
    visit fixture_url(@fixture)
    click_on "Edit this fixture", match: :first

    fill_in "League", with: @fixture.league_id
    fill_in "Match date", with: @fixture.match_date
    fill_in "Match time", with: @fixture.match_time
    fill_in "Opponent", with: @fixture.opponent
    fill_in "Table", with: @fixture.table_id
    click_on "Update Fixture"

    assert_text "Fixture was successfully updated"
    click_on "Back"
  end

  test "should destroy Fixture" do
    visit fixture_url(@fixture)
    click_on "Destroy this fixture", match: :first

    assert_text "Fixture was successfully destroyed"
  end
end
