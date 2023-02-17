import 'package:flutter/material.dart';
import 'package:mfood_pos/screens/home_page.dart';
 
import 'screens/language_page.dart';

void main() {
  runApp(const MyApp());
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
       
        primarySwatch: Colors.blue,
      ),
      // home: LanguagePage(), https://www.google.com/search?q=vertical+tab+in+flutter&sxsrf=AJOqlzWn0JJGO9muerfIDgj-IBf0rAlfiw%3A1676543815875&ei=RwfuY8OLNfemz7sP95Kk-AU&ved=0ahUKEwiDy-G07Jn9AhV303MBHXcJCV8Q4dUDCA8&uact=5&oq=vertical+tab+in+flutter&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIHCAAQHhDxBDIFCAAQhgMyBQgAEIYDMgUIABCGAzIFCAAQhgMyBQgAEIYDOgoIABBHENYEELADOgcIIxCwAhAnOgkIABAHEB4Q8QQ6CwgAEAgQBxAeEPEEOggIABAIEAcQHjoFCAAQgAQ6BggAEAgQHjoJCAAQCBAeEPEEOgUIABCiBEoECEEYAFCAEViFXWDLaWgDcAF4AIABeIgBmw6SAQQxMy42mAEAoAEByAEIwAEB&sclient=gws-wiz-serp#fpstate=ive&vld=cid:800655ae,vid:w_6YLUq87ds
      home: const HomePage(),
    );
  }
}

