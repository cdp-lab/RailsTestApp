module BugsnifferRails
  class Notifier
    include Singleton

    def notify(data = {})
      HTTParty.post(
        "http://localhost:4000/v1/events/collector",
        headers: {
          "application_uid" => BugsnifferRails::Config.instance.application_uid,
          "application_secret" => BugsnifferRails::Config.instance.application_secret,
        },
        body: {
          data: data,
          app_env: Rails.env
        }
      )
    end
  end
end
