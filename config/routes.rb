Rails.application.routes.draw do
  match '/send' => 'fcm#sendPushNote', via: [:get]
end
