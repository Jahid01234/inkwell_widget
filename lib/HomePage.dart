import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


MysnackBar(message,context){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Inkwell Widget"),
        titleTextStyle: TextStyle(color: Colors.white),
        centerTitle: true,
      ),
      body: Center(
        child:  InkWell(
          onTap: (){
            MysnackBar("This is onTap",context);
          },

          onLongPress: (){
            MysnackBar("This is onLongPress",context);
          },

          onDoubleTap: (){
            MysnackBar("This is onDoubleTap",context);
          },

          onTapUp: (_){
            MysnackBar("This is onTapUp",context);
          },

          onTapDown: (BuildContext){
            MysnackBar("This is onTapDown",context);
          },

          onTapCancel: (){
            MysnackBar("This is onTapCancel",context);
          },

          onHover: (_){
            MysnackBar("This is onHover",context);
          },
          child: Container(
          height: 120,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(child: Text("Inkwell"),),
          ),
        ),
      ),
    );
  }
}

