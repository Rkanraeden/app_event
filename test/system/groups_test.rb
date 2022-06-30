require "application_system_test_case"

class GroupsTest < ApplicationSystemTestCase
  setup do
    @group = groups(:one)
  end

  test "visiting the index" do
    visit groups_url
    assert_selector "h1", text: "Groups"
  end

  test "should create group" do
    visit groups_url
    click_on "New group"

    fill_in "Concerts", with: @group.concerts
    fill_in "Conformation", with: @group.conformation
    fill_in "Date debut", with: @group.date_debut
    fill_in "Members", with: @group.members
    fill_in "Name", with: @group.name
    fill_in "Public", with: @group.public
    fill_in "Total", with: @group.total
    click_on "Create Group"

    assert_text "Group was successfully created"
    click_on "Back"
  end

  test "should update Group" do
    visit group_url(@group)
    click_on "Edit this group", match: :first

    fill_in "Concerts", with: @group.concerts
    fill_in "Conformation", with: @group.conformation
    fill_in "Date debut", with: @group.date_debut
    fill_in "Members", with: @group.members
    fill_in "Name", with: @group.name
    fill_in "Public", with: @group.public
    fill_in "Total", with: @group.total
    click_on "Update Group"

    assert_text "Group was successfully updated"
    click_on "Back"
  end

  test "should destroy Group" do
    visit group_url(@group)
    click_on "Destroy this group", match: :first

    assert_text "Group was successfully destroyed"
  end
end
