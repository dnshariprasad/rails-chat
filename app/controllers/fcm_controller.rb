require 'fcm'
class FcmController < ApplicationController
  def sendPushNote
    fcm = FCM.new("1:671712274104:android:3bb1e8b0a3e6ec29")
    registration_ids= ["ckWPTGfnI4E:APA91bGRdoUxYVSHqgzxub0guMPdpUkpJyo9FbNfGIct_rXBBm3D7CDCtQomf9Bbneolbx2q8yY2p8UCrsaCCnaZdEvD0BbNhPXJExTXBfbn2TZvuPZtvfenaHwqWmFArxygI_A4ApKP"] # an array of one or more client registration tokens
    options = {data: {score: "123"}, collapse_key: "updated_score"}
    response = fcm.send(registration_ids, options)
    case response[:status]
      when 200
      	render json: {response: response[:body], status_code: response[:status]}, statu: :ok
      else
        render json: {response: response[:body], status_code: response[:status], headers: response[:headers]}, statu: :un_processible_entity
      end # when
  end # sendPush
end # class
