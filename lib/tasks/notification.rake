namespace :notification do
  desc "Sends SMS notifcation to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
  end

end
