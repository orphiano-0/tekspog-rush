import 'package:tekspogs/features/shop/domain/entity/chip.dart';
import 'package:tekspogs/features/shop/domain/entity/pog.dart';

abstract class GameEvent {}

class SelectChipEvent extends GameEvent {
  final Chips chip;
  SelectChipEvent(this.chip);
}

class SelectPogEvent extends GameEvent {
  final Pog pog;
  SelectPogEvent(this.pog);
}
