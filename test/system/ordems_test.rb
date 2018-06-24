require "application_system_test_case"

class OrdemsTest < ApplicationSystemTestCase
  setup do
    @ordem = ordems(:one)
  end

  test "visiting the index" do
    visit ordems_url
    assert_selector "h1", text: "Ordems"
  end

  test "creating a Ordem" do
    visit ordems_url
    click_on "New Ordem"

    fill_in "Cliente", with: @ordem.cliente
    fill_in "Colaborador", with: @ordem.colaborador
    fill_in "Data", with: @ordem.data
    fill_in "Relato", with: @ordem.relato
    fill_in "Resultado", with: @ordem.resultado
    click_on "Create Ordem"

    assert_text "Ordem was successfully created"
    click_on "Back"
  end

  test "updating a Ordem" do
    visit ordems_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @ordem.cliente
    fill_in "Colaborador", with: @ordem.colaborador
    fill_in "Data", with: @ordem.data
    fill_in "Relato", with: @ordem.relato
    fill_in "Resultado", with: @ordem.resultado
    click_on "Update Ordem"

    assert_text "Ordem was successfully updated"
    click_on "Back"
  end

  test "destroying a Ordem" do
    visit ordems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ordem was successfully destroyed"
  end
end
