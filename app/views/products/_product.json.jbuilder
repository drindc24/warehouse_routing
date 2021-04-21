json.extract! product, :id, :reference_id, :category_id, :name, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
