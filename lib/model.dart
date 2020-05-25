import 'flutter_recoil.dart';

var counterAtom = Atom('counter', 0);

Action incrementCounter = (get) {
  var counter = get(counterAtom);
  print('inc ${counter.value}');
  counter.value++;
};

Selector doubleSelector = Selector('my-first-selector', (GetStateValue get) {
  var count = get(counterAtom);
  return count * 2;
});
