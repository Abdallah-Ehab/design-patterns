import 'attack_behaviour_concrete_classes.dart';
import 'attack_interface.dart';


// 3️⃣ إنشاء Superclass عام لكل الشخصيات

class Player {
  AttackBehaviour attackBehaviour; // Composition بدل Inheritance

  Player(this.attackBehaviour);

  void performAttack() => attackBehaviour.attack();

  void setAttackBehaviour(AttackBehaviour newAttack) {
    attackBehaviour = newAttack;
  }
}

// 4️⃣ إنشاء شخصيات اللعبة المختلفة
class Knight extends Player {
  Knight() : super(AttackWithSword());
}

class Ninja extends Player {
  Ninja() : super(AttackWithKnife());
}

class Pirate extends Player {
  Pirate() : super(AttackWithGun());
}
