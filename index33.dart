abstract interface class NotificationSender {
  void send(String message);
}

class EmailNotification implements NotificationSender {
  @override
  void send(String message) {
    print("Email: $message");
  }
}

class SmsNotification implements NotificationSender {
  @override
  void send(String message) {
    print("SMS: $message");
  }
}

class PushNotification implements NotificationSender {
  @override
  void send(String message) {
    print("Push: $message");
  }
}

void sendNotification(NotificationSender sender) {
  sender.send("Hello! How are you?");
}

void main() {
  sendNotification(EmailNotification());
  sendNotification(SmsNotification());
  sendNotification(PushNotification());
}