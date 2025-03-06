

//this is push model subscriber this model will get all the data the observable pushes to it whether it needs it or not

import 'observable_interface.dart';
import 'observer_interface.dart';

class Subscriber implements Observer {
  String name;
  String email;
  String? notification;
  String? videoName;
  Observable channel;
  Subscriber({required this.name, required this.email, this.notification, required this.channel}){
    channel.addObserver(this);
  }

  
  @override
  void update(String notification,String videoName) {
    
    printNotification();
  }

  
  void printNotification() {
    print(notification);
  }


}

