import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double borderRadius;
  final String text;

  CustomContainer({
    required this.width,
    required this.height,
    required this.color,
    required this.borderRadius,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('15 Contenedores'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("onTap")),
                          );
                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Center(
                            child: Text(
                              "onTap",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                              ),),),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.red, Colors.blue],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onDoubleTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("onDoubleTap")),
                          );
                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Center(child: Text(
                            "onDoubleTap",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ))),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(205, 29, 218, 35),
                                Color.fromARGB(255, 53, 181, 255)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onLongPress: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("onLongPress")),
                          );
                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Center(child: Text(
                            "onLongPress",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ))),
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                              colors: [Colors.blue, Colors.black],
                              center: Alignment.center,
                              radius: 0.8,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTapDown: (details) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("onTapDown")),
                          );
                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Center(child: Text(
                            "onTapDown",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ))),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTapUp: (details) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("onTapUp")),
                          );
                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Center(child: Text(
                            "onTapUp",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ))),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CustomContainer(
                  width: 200,
                  height: 200,
                  color: Colors.purple,
                  borderRadius: 75,
                  text: 'Método de contenedor',
                ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.pink,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Texto',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Texto',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Texto',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/hamburguesa-con-queso.png"),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 10,
                          blurRadius: 50,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 220, 57, 220),
                      border: Border.all(color: Colors.black, width: 5),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      border: Border.all(color: Colors.black, width: 30),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      shape: BoxShape.circle,
                      gradient: SweepGradient(
                        colors: [Colors.brown, Colors.yellow],
                        center: Alignment.center,
                        startAngle: 0.0,
                        endAngle: 3.14,
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: SweepGradient(
                        colors: [Colors.purple, Colors.orange, Colors.purple],
                        center: Alignment.center,
                        startAngle: 0.0,
                        endAngle: 3.14,
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black, Colors.white],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.3, 0.7],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 251, 181),
                      border: Border(
                        top: BorderSide(width: 5.0, color: Colors.blue),
                        left: BorderSide(width: 5.0, color: Colors.green),
                        right: BorderSide(width: 5.0, color: Colors.yellow),
                        bottom: BorderSide(width: 5.0, color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
