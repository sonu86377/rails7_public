class NotifierMailer < ApplicationMailer
    def alert_admin
        mail(subject:"ALERT-A new product has been added",to:"sonukumar@gmail.com")
    end
end
