require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit flats_url
  #
  #   assert_selector "h1", text: "Flats"
  # end

  test "visiting flats page shows 2 flats" do
    fake_json = [
      {
        id: 145,
        name: "Charm at the Steps of the Sacre Coeur/Montmartre",
        imageUrl: "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/images/flat1.jpg",
        price: 164,
        priceCurrency: "EUR"
      },
      {
        id: 148,
        name: "Trendy Apt in Buttes Montmartre",
        imageUrl: "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/images/flat2.jpg",
        price: 200,
        priceCurrency: "EUR"
      }
    ].to_json

    stub_request(:get, "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json")
      .to_return(status: 200, body: fake_json, headers: { "Content-Type" => "application/json" })


    visit "/"

    assert_selector "h1", text: "Flats"
    assert_selector "h2", count: 2

    assert_text "Charm at the Steps of the Sacre Coeur/Montmartre"
    assert_text "Trendy Apt in Buttes Montmartre"
  end
end
