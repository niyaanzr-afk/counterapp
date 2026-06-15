import 'package:counterapp/app.dart';
import 'package:counterapp/count_controller.dart';
import 'package:counterapp/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  
  
  home:ChangeNotifierProvider(create: (context) => CountController(),child: count(),),));
}


  
    