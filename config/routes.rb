Rails.application.routes.draw do
  get "team" => "team_page/team_members#index" , :as => :team_page
end
