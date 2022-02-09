require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name: Faker::Hipster.sentence(3),
        description: Faker::Hipster.sentence(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario 'visit product page' do
  visit root_path
  expect(page).to have_css 'article.product', count: 10
  first(:link, 'Details').click
  # sleep(5)  
  find('article.product-detail')
  # puts page.html
  expect(page).to have_css 'article.product-detail'
  save_screenshot('product_detail.png')
  end
end
