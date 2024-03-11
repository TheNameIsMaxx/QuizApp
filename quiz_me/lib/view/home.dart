import 'package:flutter/material.dart';
import 'package:quiz_me/view/result_screen.dart';
import 'package:quiz_me/view/widgets/question.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Color mainColor = Color(0xff252c4a);
  Color secondColor = Color(0xff117eeb);

  bool isPressed =false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.redAccent;
  Color btnColor = Color(0xff117eeb);

  //page controller
  PageController? _controller = PageController(initialPage: 0);
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: PageView.builder(
        controller: _controller!,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (pages){
          setState(() {
            isPressed=false;
          });
        },
          itemCount: questions.length,
          itemBuilder: (context,index){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 220,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.deepPurpleAccent
                  ),
                  child: Text("Question ${index+1} /${questions.length}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                  const SizedBox(height: 25,),
                  Text(questions[index].question!,style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                  const SizedBox(height: 20,),
                  for(int i=0;i<questions[index].answer!.length; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      // color: isPressed ? questions[index].answer!.entries.toList()[i].value
                      //    ? isTrue 
                      //    :isWrong 
                      // : secondColor 
                      
                      child: ElevatedButton(
                        onPressed:isPressed ? (){} : (){
                          setState(() {
                            isPressed =true;
                          });
                          if(questions[index].answer!.entries.toList()[i].value){
                            score+=10;
                            print(score);
                          }
                          else{
                            setState(() {
                              btnColor = isWrong;
                            });
                          }
                        }, 
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: isPressed 
                          ? questions[index].answer!.entries.toList()[i].value
                            ? isTrue 
                            :isWrong 
                          : secondColor 
                        ),
                        child: Text(questions[index].answer!.keys.toList()[i],
                        style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)
                        ),
                    ),
                  ),
                 const SizedBox(height: 40,),
                  SizedBox(
                    height: 45,
                    width: 200,
                    child: RawMaterialButton(
                      onPressed: isPressed ? index+1 ==questions.length 
                      ?(){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>ResultScreen(result: score,)));
                      }
                      :(){
                        _controller!.nextPage(duration: Duration(milliseconds: 750), curve: Curves.linear);
                      }
                      :null,
                      // fillColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.deepPurpleAccent,width: 2),),
                      child:Text(
                        index+1 ==questions.length
                        ?"Se Result"
                        : "Next Question",
                        style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold,color: Colors.white),),
                      ),
                  )
              ],
            );
          }
          ),
      ),
    );
  }
}