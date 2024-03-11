import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final int? result;
  const ResultScreen({super.key,this.result});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Result",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            const Text("Congretulations",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
            const SizedBox(height: 20,),
            const Text("Your Score",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
            const SizedBox(height: 20,),
            CircleAvatar(
              radius: 53,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.deepPurpleAccent,
                child: Text("${widget.result}",style:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
              
              ),
            )
          ],
        ),
      ),
    );
  }
}