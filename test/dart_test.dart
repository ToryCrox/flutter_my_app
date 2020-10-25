import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


class Vip{

  final int level;
  final int score;

  const Vip(this.level, this.score);

  bool operator >(Vip vip) =>
      level > vip.level || (level == vip.level && score > vip.score);

  bool operator <(Vip vip) =>
      level < vip.level || (level == vip.level && score < vip.score);

  @override
  bool operator ==(covariant Vip vip) =>
      level == vip.level  && score == vip.score;

  @override
  int get hashCode => super.hashCode;

}



void main() {
  test("basic type", () {
    var isOpen = false;
    const PI = 3.141592653;

    int  width = 300;
    int height = 200;
    var ratio = width / height;
    print(ratio);
    print(width ~/ height);

    print(ratio is double);
    print(PI is double);

  });

  test("collection", (){
    final myList = ["a", "b"];
    myList.add("c");
    print("myList: $myList");

    myList.forEach((element) {
      print("item: $element");
    });
    print("asMap: " + myList.asMap().toString());

    var list1 = new List<String>(20);

    List<int> numbers = [0, 3, 1, 2, 7, 12, 2, 4];
    numbers.sort((num1, num2) => num1 - num2); //升序排序
    print(numbers);
  });


  test("test function", () {
    funcTest(1, 2);
  });
}

void funcTest(num a, num b, {num c, num d = 30}) {
  final map = {"a": a, "b": b, "c": c, "d": d};
  print("funcTest:$map");
}
