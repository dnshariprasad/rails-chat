Rails.application.routes.draw do
  match '/send' => 'fcm#sendPush', via: [:get]
end
