class Notification::ContentController < Notification::ApplicationController
	def sendPush
		Webpush.payload_send(endpoint: params[:endpoint],
							message: JSON.generate({ 
								title: params[:message],
								body: params[:body]
								}),
							p256dh: params[:p256dh],
							auth: params[:auth],
							ttl: 24 * 60 * 60,
							urgency: 'normal',
							vapid: {
								subject: 'mailto:admin@commercialview.com.au',
								public_key: "BPO6KtLoo8AvG5aLXrdmjVyYxBisgdH-b_lCvhectlK81YsNKzfUU46oVmGhJAk822tDAvXBS79JlX0ZUeWKOPk=",
								private_key: "TBD5gqg82wiYndGd6byWUWyxuxmvBavN8vIx9noWhvI="
							}
		)
		
		# sendPayload()
		# render body: nil
	end

	# def sendPayload(user)
	   
	# 	@message = get_message(user.name)
	#     if user.notif_id.present?

	#       Webpush.payload_send(endpoint: @notification_data.endpoint,
	#                            message: @message,
	#                            p256dh: @notification_data.p256dh_key,
	#                            auth: @notification_data.auth_key,
	#                            ttl: 24 * 60 * 60,
	#                            vapid: {
	#                                subject: 'mailto:admin@commercialview.com.au',
	#                                public_key: $vapid_public,
	#                                private_key: $vapid_private
	#                            }
	#       )
	#       puts "success"
	#     else
	#       puts "failed"
	#     end
    # end

    # def get_message(name)
    # 	"Hello World"
    # end

	# def sendPushParams
		
	# 	sendPayloadParams()
	# 	render body: nil
	# end

	# def sendPayloadParams()
	# 	Webpush.payload_send(endpoint: params[:endpoint],
	# 						message: JSON.generate({ 
	# 							title: params[:message],
	# 							body: params[:body],
	# 							icon: params[:icon]
	# 							}),
	# 						p256dh: params[:p256dh],
	# 						auth: params[:auth],
	# 						ttl: 24 * 60 * 60,
	# 						urgency: 'normal',
	# 						vapid: {
	# 							subject: 'mailto:admin@commercialview.com.au',
	# 							public_key: $vapid_public,
	# 							private_key: $vapid_private
	# 						}
	# 	)
    # end
end

