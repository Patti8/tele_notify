module TeleNotify
  module Controller
    def webhook
      if params[:message]
        TelegramUser.create( { telegram_id: params[:message][:from][:id],
                                      first_name: params[:message][:from][:first_name],
                                      username: params[:message][:from][:username],
                                      last_name: params[:message][:from][:last_name]})

        render :nothing => true, :status => :ok
      end
    end
  end
end
