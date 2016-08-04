class FcmController < ApplicationController
  def sendPush
          request = Typhoeus::Request.new(
                  "https://fcm.googleapis.com/fcm/send",
                  method: :post,
                  params: { to: "dxZK7s9gFAo:APA91bGvZiuljOrnu6uAAIxSRjFIRnkFB736IqA98p7Tg6Zazyj97eWMHv6xWF7vDVqTOBgM9fpkZwpPZH45tcpqvr0sFta6Lwgp-X3k03GUNks4FvvF9-iKThG4w1DKtjB9Bp47Y0Nc",
                            data: {
                              msg: "hi"}},
                  headers: { Accept: "application/json",
                            Authorization: "key=1:776651629509:android:3bb1e8b0a3e6ec29"})
        if request.on_complete
            render json: {response: JSON.parse(request.to_json)}, statu: :ok
          else
            render json: {response: "Unknown Request"}, status: :bad_request
        end #case case
      end #send end
end #class
