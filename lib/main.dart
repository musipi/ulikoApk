import 'package:flutter/material.dart';
import 'package:insoft_afya/register.dart';

import 'login.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    color: Color.fromARGB(195, 120, 251, 64),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueAccent,
        title: const Text("Bonjour le monde"),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            UserAccountsDrawerHeader(
              arrowColor: Colors.red,
              accountName: Text("Uliko"),
              accountEmail: Text("gaelmwenge10@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: Image.asset("images/logo_insoft5.png"),
              ),
              decoration: BoxDecoration(color: Colors.pink),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Longin();
                }));
              },
              child: Text("connexion", style: TextStyle(fontSize:25.0 , color: Colors.blue),)
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context){
                    return Register();
                  }
                  ));
                  
                },
                child:Text("enregistrer") ,
              )
                
          ],
        ),
      ),
      body: Center(
        child: Image.asset("images/info.png"),
      ),
      // ignore: prefer_const_constructors
    );
  }
}
