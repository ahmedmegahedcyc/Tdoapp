import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/view_model/app_view_model.dart';
import 'package:todoapp/views/task_page.dart';

void main() {
   runApp(ChangeNotifierProvider(
      create: (context) => AppViewModel(), child: const MyApp()));
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      TaksPage()
     // const MyHomePage(title: 'Flutter Demo Home Page')

      ,
    );
  }
}
