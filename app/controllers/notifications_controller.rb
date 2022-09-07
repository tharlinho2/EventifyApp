class NotificationsController < ApplicationController

    def create
        Notification.create(endpoint: params[:subscription][:endpoint],
                                p256dh_key: params[:subscription][:keys][:p256dh],
                                auth_key: params[:subscription][:keys][:auth],
                                user_id: current_user.id)
        
        @message = {
            title: "title",
            body: "body",
            icon: "http://example.com/icon.pn"
        }
        
        Webpush.payload_send(endpoint: params[:subscription][:endpoint],
            message: JSON.generate({ 
                title: "Teste",
                body: "Teste"
            }),
            p256dh: params[:subscription][:keys][:p256dh],
            auth: params[:subscription][:keys][:auth],
            ttl: 24 * 60 * 60,
            urgency: 'normal',
            vapid: {
                subject: 'mailto:admin@commercialview.com.au',
                public_key: ENV['VAPID_PUBLIC_KEY'],
                private_key: ENV['VAPID_PRIVATE_KEY']
            }
        )
    end
end  
