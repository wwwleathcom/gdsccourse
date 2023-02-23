import 'package:flutter/material.dart';
import 'package:gdsccourse/components/my_button.dart';
import 'components/my_paint.dart';
import 'components/my_textfield.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Stack(
          children: [
            SizedBox(
              height: 420,
              width: double.infinity,
              child: CustomPaint(
                painter: MyPaint(),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 85,
                ),
                MyTextField(
                  myIcon: Icons.person,
                  myText: 'Full Name',
                  myTextInputType: TextInputType.name,
                ),
                MyTextField(
                  myIcon: Icons.phone,
                  myText: 'Phone',
                  myTextInputType: TextInputType.phone,
                ),
                MyTextField(
                  myIcon: Icons.email,
                  myText: 'Email',
                  myTextInputType: TextInputType.emailAddress,
                ),
                MyTextField(
                  myIcon: Icons.lock,
                  myText: 'Password',
                  myTextInputType: TextInputType.visiblePassword,
                  myObscureText: true,
                ),
                MyTextField(
                  myIcon: Icons.lock,
                  myText: 'Confirm Password',
                  myTextInputType: TextInputType.visiblePassword,
                  myObscureText: true,
                ),
                MyButton(
                  myOnTap: null,
                  myTextButton: 'Register',
                  myColor: Color(0xFF6339B2),
                ),
                MyButton(
                  myOnTap: null,
                  myTextButton: 'Login',
                  myColor: Colors.blueGrey,
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
