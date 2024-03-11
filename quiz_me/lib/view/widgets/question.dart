import 'package:quiz_me/model/quiz_model.dart';

final List<QuizModel> questions = [
  QuizModel(
    question: " What programming language is used to develop Flutter applications?", 
    answer: {
    "Kotlin": false,
    "Dart": true,
    "Swift": false,
    "Java": false,
  }),
  QuizModel(
    question: " Which Flutter widget is used for handling user gestures like taps, drags, and long-presses?", 
    answer: {
    "GestureDetector": true,
    "TouchHandler": false,
    "GestureResponder": false,
    "InputController": false,
  }),
  QuizModel(
    question: "Which widget is used to create a scrollable list of widgets in Flutter?", 
    answer: {
    "ListView ": true,
    "GridView": false,
    "Column": false,
    "Row": false,
  }),
  QuizModel(
    question: " Which Flutter widget is commonly used for displaying a modal overlay on top of other content?", 
    answer: {
    "Snackbar": false,
    "BottomSheet": false,
    "Dialog": true,
    "Tooltip": false,
  }),
  QuizModel(
    question: " What Flutter command is used to run a debug build of the application on an emulator or connected device?", 
    answer: {
    "flutter build": false,
    "flutter debug": false,
    "flutter run ": true,
    "flutter start": false,
  }),
  QuizModel(
    question: "Which widget is used for adding padding around other widgets in Flutter?", 
    answer: {
    "Spacer": false,
    "Padding": true,
    "SizedBox": false,
    "Container": false,
  }),
  QuizModel(
    question: "Which Flutter widget is used for efficiently rendering a large collection of items in a scrollable list?", 
    answer: {
    "ListView": false,
    "GridView.builder ": true,
    "SingleChildScrollView": false,
    "PageView": false,
  }),
  QuizModel(
    question: "Which package is commonly used for state management in Flutter applications?", 
    answer: {
    "flutter_state": false,
    "stateful_widgets": false,
    "provider": true,
    "state_management": false,
  }),
  QuizModel(
    question: "Which Flutter widget is used for drawing custom graphics and animations?", 
    answer: {
    "CanvasWidget": false,
    "DrawWidget": false,
    "CustomPainter ": true,
    "PaintCanvas": false,
  }),
  QuizModel(
    question: "Which command is used to create a new Flutter project from the command line?", 
    answer: {
    "flutter new": false,
    "flutter create": true,
    "flutter init": false,
    "flutter start": false,
  }),
];
