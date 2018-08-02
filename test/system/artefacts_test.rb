require "application_system_test_case"

class ArtefactsTest < ApplicationSystemTestCase
  setup do
    @artefact = artefacts(:one)
  end

  test "visiting the index" do
    visit artefacts_url
    assert_selector "h1", text: "Artefacts"
  end

  test "creating a Artefact" do
    visit artefacts_url
    click_on "New Artefact"

    fill_in "Key", with: @artefact.key
    fill_in "Name", with: @artefact.name
    fill_in "Project", with: @artefact.project_id
    click_on "Create Artefact"

    assert_text "Artefact was successfully created"
    click_on "Back"
  end

  test "updating a Artefact" do
    visit artefacts_url
    click_on "Edit", match: :first

    fill_in "Key", with: @artefact.key
    fill_in "Name", with: @artefact.name
    fill_in "Project", with: @artefact.project_id
    click_on "Update Artefact"

    assert_text "Artefact was successfully updated"
    click_on "Back"
  end

  test "destroying a Artefact" do
    visit artefacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artefact was successfully destroyed"
  end
end
