require "application_system_test_case"

class ColaboradoresTest < ApplicationSystemTestCase
  setup do
    @colaboradore = colaboradores(:one)
  end

  test "visiting the index" do
    visit colaboradores_url
    assert_selector "h1", text: "Colaboradores"
  end

  test "creating a Colaboradore" do
    visit colaboradores_url
    click_on "New Colaboradore"

    fill_in "Nome", with: @colaboradore.nome
    click_on "Create Colaboradore"

    assert_text "Colaboradore was successfully created"
    click_on "Back"
  end

  test "updating a Colaboradore" do
    visit colaboradores_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @colaboradore.nome
    click_on "Update Colaboradore"

    assert_text "Colaboradore was successfully updated"
    click_on "Back"
  end

  test "destroying a Colaboradore" do
    visit colaboradores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Colaboradore was successfully destroyed"
  end
end
