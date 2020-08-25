import '../components/led.dart';

Map<int, Led> initList() {
  return {
    1: Led(id: 5),
    2: Led(id: 6),
    3: Led(id: 7),
    4: Led(id: 4),
    5: Led(sized: true),
    6: Led(id: 8),
    7: Led(id: 3),
    8: Led(sized: true),
    9: Led(id: 9),
    10: Led(id: 2),
    11: Led(id: 1, primary: true, activate: true),
    12: Led(id: 10)
  };
}
