import 'observable_interface.dart';
import 'observer_interface.dart';

class Channel extends Observable{
  String? _notification;
  String? _videoName;


  List<Observer> observers = [];

  @override
  void addObserver(Observer observer) {
    observers.add(observer);
  }

  @override
  void notifyObservers() {
    for (var observer in observers) {
      observer.update(_notification!,_videoName!);
    }
  }

  @override
  void removeObserver(Observer observer) {
    observers.remove(observer);
  }
  
  @override
  String getNotification() {
    return _notification!;
  }
  @override
  String getVideoName() => _videoName!;

  void setNotificationAndVideoName(String notification, String videoName){
    _notification = notification;
    _videoName = videoName;
    notifyObservers();
  }
  


}

