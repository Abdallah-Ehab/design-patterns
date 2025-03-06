

import 'channel.dart';
import 'subscriber.dart';

// push model for observer pattern
void main(){
Channel channel = Channel();
Subscriber subscriber1 = Subscriber(name: "Ahmed", email: 'Ahmed@gmail.com', channel: channel);
channel.setNotificationAndVideoName("New Video", "Flutter Observer Pattern");
subscriber1.printNotification();
}

