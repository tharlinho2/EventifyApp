class NotificationsController < ApplicationController

    def create
        Webpush.payload_send(endpoint: params[:subscription][:endpoint],
            message: JSON.generate({ 
                title: "Teste",
                body: "Teste"
            }),
            p256dh: params[:subscription][:keys][:p256dh],
            auth: params[:subscription][:keys][:auth],
            urgency: 'normal',
            vapid: {
                subject: 'mailto:admin@commercialview.com.au',
                public_key: ENV['VAPID_PUBLIC_KEY'],
                private_key: ENV['VAPID_PRIVATE_KEY']
            }
        )
    end

    def registration
        # def exist_regist_user
        #     regist = Notification.where(endpoint: params[:subscription][:endpoint])

        #     regist = Notification.where(endpoint: params[:subscription][:endpoint])

        #     regist = Notification.where(endpoint: params[:subscription][:endpoint])
        # end

        

        # Notification.create(endpoint: params[:subscription][:endpoint],
        #     p256dh_key: params[:subscription][:keys][:p256dh],
        #     auth_key: params[:subscription][:keys][:auth],
        #     user_id: current_user.id)

        exist_regist_browser
    end

    private

    def exist_regist_browser
        regist = Notification.where(endpoint: params[:subscription][:endpoint])

        regist = Notification.where(p256dh_key: params[:subscription][:keys][:p256dh])
        
        regist = Notification.where(auth_key: params[:subscription][:keys][:auth])

        if regist.present?
            exist_outro = false

            regist.each do |r|
                if r.user_id != current_user.id
                    exist_outro = true
                    break
                end
            end

            if exist_outro
                regist.destroy_all

                new_notification
            end
        else
            new_notification
        end
    end

    def new_notification
        Notification.create(endpoint: params[:subscription][:endpoint],
            p256dh_key: params[:subscription][:keys][:p256dh],
            auth_key: params[:subscription][:keys][:auth],
            user_id: current_user.id)
    end
end  
