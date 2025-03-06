
import 'attack_behaviour_concrete_classes.dart';
import 'players.dart';

// 🏆 تجربة الكود في الـ main
void main() {
  Player knight = Knight();
  Player ninja = Ninja();
  Player pirate = Pirate();

  print("Knight:");
  knight.performAttack();

  print("\nNinja:");
  ninja.performAttack();

  print("\nPirate:");
  pirate.performAttack();

  // 🔥 تحديث سلوك الهجوم ديناميكيًا
  print("**Upgrade! Ninja got a sword!**");
  ninja.setAttackBehaviour(AttackWithSword());
  ninja.performAttack();
}
