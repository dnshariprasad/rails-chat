require 'fcm'
class FcmController < ApplicationController
  def sendPushNote
    fcm = FCM.new("key=1:776651629509:android:3bb1e8b0a3e6ec29")
    registration_ids= ["dxZK7s9gFAo:APA91bGvZiuljOrnu6uAAIxSRjFIRnkFB736IqA98p7Tg6Zazyj97eWMHv6xWF7vDVqTOBgM9fpkZwpPZH45tcpqvr0sFta6Lwgp-X3k03GUNks4FvvF9-iKThG4w1DKtjB9Bp47Y0Nc"] # an array of one or more client registration tokens
    options = {data: {score: "123"}, collapse_key: "updated_score"}
    response = fcm.send(registration_ids, options)
    # case response.status_code
    # when 200
      	# render json: {response: JSON.parse(response.body)}, statu: :ok
    # else
      	# render json: {response: "Unknown Request"}, status: :un_processible_entity
    # end # when
    render json: {response: "success"}, status: :ok
  end # sendPush
end # class
