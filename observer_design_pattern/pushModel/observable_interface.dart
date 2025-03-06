import 'observer_interface.dart';

abstract class Observable {
  void addObserver(Observer observer);
  void notifyObservers();
  void removeObserver(Observer observer);
  String getNotification();
  String getVideoName();
}