import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Yapilacaklar_Listesi/page/home_page.dart';
import 'package:Yapilacaklar_Listesi/provider/todos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Yapilacaklar Listesi';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Color(0xff1ee9d1),
          ),
          home: HomePage(),
        ),
      );
}
