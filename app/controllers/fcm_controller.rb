class FcmController < ApplicationController
  def sendPush
    raw_response= Request.post 'https://fcm.googleapis.com/fcm/send',
                                { 'to' => 'dxZK7s9gFAo:APA91bGvZiuljOrnu6uAAIxSRjFIRnkFB736IqA98p7Tg6Zazyj97eWMHv6xWF7vDVqTOBgM9fpkZwpPZH45tcpqvr0sFta6Lwgp-X3k03GUNks4FvvF9-iKThG4w1DKtjB9Bp47Y0Nc',
                                  'body' => {'msg' => "hi"}}.to_json,
                                :accept => :json,
                                :content_type => :json,
                                :Authorization => 'key=1:776651629509:android:3bb1e8b0a3e6ec29'
  case raw_response.code
    when 200
      		render json: {response: JSON.parse(raw_response.body)}, statu: :ok
      	else
      		render json: {response: "Unknown Request"}, status: :un_processible_entity
    end # when
  end #sendPush
end #class
