import 'package:flutter/material.dart';
import 'package:gdsccourse/components/my_button.dart';
import '../components/my_paint.dart';
import '../components/my_text_form_field.dart';
import '../config/helper.dart' as helper;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void validateAndSave() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
      Navigator.pushNamed(context,helper.myRouteList[3][1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Stack(
              children: [
                SizedBox(
                  height: 600,
                  width: double.infinity,
                  child: CustomPaint(
                    painter: MyPaint(),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 48,
                    ),
                    Text(
                      helper.myRouteList[1][0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(
                      height: 85,
                    ),
                    MyTextFormField(
                      myController: emailController,
                      myIcon: Icons.email,
                      myText: 'Email',
                      myTextInputType: TextInputType.emailAddress,
                      myObscureText:false,
                    ),
                    MyTextFormField(
                      myController: passwordController,
                      myIcon: Icons.lock,
                      myText: 'Password',
                      myTextInputType: TextInputType.visiblePassword,
                      myObscureText: true,
                    ),
                    MyButton(
                      myOnTap: validateAndSave,
                      myTextButton: 'Login',
                      myFillColor: helper.frontColor,
                      myTextColor: const Color(0xFFFFFFFF),
                    ),
                    MyButton(
                      myOnTap: () {
                        Navigator.pushNamed(context, helper.myRouteList[2][1]);
                      },
                      myTextButton: 'Register',
                      myFillColor: const Color(0xFFFFFFFF),
                      myTextColor: const Color(0xFF000000),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
