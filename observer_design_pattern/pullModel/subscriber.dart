import 'observable_interface.dart';
import 'observer_interface.dart';

// this is the pull model for observer pattern
// the subscriber will pull the notification from the channel without pulling the video name for example

class Subscriber implements Observer {
  String name;
  String email;
  String? notification;
  Observable channel;
  Subscriber({required this.name, required this.email, this.notification, required this.channel}){
    channel.addObserver(this);
  }

  
  @override
  void update() {
    this.notification = channel.getNotification();
    printNotification();
  }

  
  void printNotification() {
    print(notification);
  }


}

