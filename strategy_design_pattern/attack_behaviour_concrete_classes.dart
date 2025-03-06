import 'attack_interface.dart';

// 2️⃣ إنشاء Classes منفصلة لكل نوع هجوم

class AttackWithSword implements AttackBehaviour {
  @override
  void attack() => print("Attacking with a sword! ⚔️");
}

class AttackWithKnife implements AttackBehaviour {
  @override
  void attack() => print("Attacking with a knife! 🗡️");
}

class AttackWithGun implements AttackBehaviour {
  @override
  void attack() => print("Attacking with a gun! 🔫");
}
