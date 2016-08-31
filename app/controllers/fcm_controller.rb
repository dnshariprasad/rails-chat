require 'fcm'
class FcmController < ApplicationController
  def sendPushNote
    fcm = FCM.new("1:776651629509:android:3bb1e8b0a3e6ec29")
    registration_ids= ["fuOeAA-fPwI:APA91bFiUr7nNKOkXZEQYswuXq7AuQ4Hzjhw_OO-V3TGC3BnHNueZnvt8noE-35-MtQ_3qKgGig7pvYQZCBjVVSaWZPqrS8WRoNShZ0AhWPW-ByurLtBaNwVg6Zd_cIiv_0IFgSpn77g"] # an array of one or more client registration tokens
    options = {data: {score: "123"}, collapse_key: "updated_score"}
    response = fcm.send(registration_ids, options)
    case response[:status]
      when 200
      	render json: {response: response[:body], status_code: response[:status]}, statu: :ok
      else
        render json: {response: response[:body], status_code: response[:status], headers: response[:headers]}, statu: :un_processible_entity
      end # when
    # render json: {response: "success"}, status: :ok
  end # sendPush
end # class
