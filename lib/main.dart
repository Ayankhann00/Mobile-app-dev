import 'dart:io';

void main() {
  try {
    stdout.write("Please enter your age: ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("You didn't enter anything. Please enter a valid age.");
      return;
    }

    int? age = int.tryParse(input);

    if (age == null) {
      print("Invalid input! Please enter a valid number.");
      return;
    }

    if (age < 0) {
      print("Age cannot be negative. Please enter a positive number.");
      return;
    }

    int yearsLeft = 100 - age;

    if (yearsLeft > 0) {
      print("You have $yearsLeft years left until you turn 100.");
    } else {
      print("You are already 100 years old or older!");
    }
  } catch (e) {
    print("An unexpected error occurred: $e");
  }
}
