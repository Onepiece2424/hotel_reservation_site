json.extract! myaccount, :id, :icon, :introduction, :name, :created_at, :updated_at
json.url myaccount_url(myaccount, format: :json)
