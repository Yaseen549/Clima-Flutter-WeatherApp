import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  print(task2());
  //String test2Result = await task2();
  //task3(test2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, (){
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String test2Data) {
  String result = 'task 3 data';
  print('Task 3 complete $test2Data');
}