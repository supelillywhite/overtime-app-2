namespace :notification do
  desc "Sends SMS notifcation to employees asking them to log if they had overtime or not"
  task sms: :environment do
  end

  desc "Sends mail notifcation to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end

end
