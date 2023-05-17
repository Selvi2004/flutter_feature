import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration:const   BoxDecoration(
                 boxShadow: [
                       BoxShadow(
                      color: Colors.grey,
                      offset:  Offset( 5.0,
                        5.0,),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                     )
                  ],
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.greenAccent, Colors.pinkAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
              ),
              
              Container(
                height: 100,
                width: 200,
                decoration:  const BoxDecoration(
                  gradient:SweepGradient(
                    center: Alignment.center,
                    colors: [Colors.red,Color.fromARGB(255, 234, 226, 224)],
                    stops: [0.3,0.9]
                  ),
                  // borderRadius: BorderRadius.circular(10),
                ), 
              ),

              
              Container(
                height: 100,
                width: 100,
                decoration:  const BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.center,
                    radius: 0.5,
                    colors: [Colors.red,Colors.orange,Colors.yellow],   
                  ),
                  // borderRadius: BorderRadius.circular(10),
                ),
              ),

              const SizedBox(height: 40), // add some spacing between the rows

              SizedBox(
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.pink],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                      ),
                    ),
                    
                    Container(
                      height: 100,
                      width: 200,
                      decoration: const BoxDecoration(
                        gradient: SweepGradient(
                          center: Alignment.center,
                          colors: [Colors.purple, Colors.grey],
                          stops: [0.1, 0.9]
                        ),
                      ),
                    ),
                    
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 0.9,
                          colors: [Color.fromARGB(255, 237, 184, 180), Color.fromARGB(255, 228, 108, 216),Colors.blue],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
