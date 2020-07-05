import '../components/led.dart';

List<Led> initList() {
  return [
    Led(id: 5),
    Led(id: 6),
    Led(id: 7),
    Led(id: 4),
    Led(sized: true),
    Led(id: 8),
    Led(id: 3),
    Led(sized: true),
    Led(id: 9),
    Led(id: 2),
    Led(id: 1, primary: true, activate: true),
    Led(id: 10),
  ];
}
