Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/url_input" => "url_input#url_input"
    get "/guess_game" => "url_input#guess_game"

    get '/segment_parameter_url/:this_is_a_variable' => 'url_input#url_segment_method'
  end
end
