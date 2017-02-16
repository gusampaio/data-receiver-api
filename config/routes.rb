Rails.application.routes.draw do
  post "/water_level" => 'water_level#insert_wl'
end
