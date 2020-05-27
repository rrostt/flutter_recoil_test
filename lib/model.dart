import 'package:flutter/foundation.dart';

import 'flutter_recoil.dart';

var counterAtom = Atom('counter', ValueNotifier(0));

Action incrementCounter = (get) {
  var counter = get(counterAtom);
  counter.value++;
};

Selector doubleSelector = Selector('my-first-selector', (GetStateValue get) {
  var count = get(counterAtom);
  return count.value * 2;
});

Selector doublePlusOneSelector =
    Selector('my-first-selector', (GetStateValue get) {
  var count = get(doubleSelector);
  return count + 1;
});
