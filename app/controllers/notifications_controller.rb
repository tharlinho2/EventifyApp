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
                public_key: "BACfNWl1UqWyyRHIw7wRbm0ZHyVYing85sBOVMzmy5rDIsp-OipzJ7iHG3TtU8-_n9bS2k2WezFmt9vAtC0x9Bo=",
                private_key: "KIYVQ1X-WbI9ICPuNudM4L5vPX16wd1UrL6a7WHOnus="
            }
        )
    end
end  
