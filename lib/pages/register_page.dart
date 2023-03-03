import 'package:flutter/material.dart';
import 'package:gdsccourse/components/my_button.dart';
import '../components/my_paint.dart';
import '../components/my_text_form_field.dart';
import '../config/helper.dart' as helper;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void validateAndSave() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
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
                      helper.title[1],
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
                      myController: nameController,
                      myIcon: Icons.person,
                      myText: 'Full Name',
                      myTextInputType: TextInputType.name,
                      myObscureText:false,
                    ),
                    MyTextFormField(
                      myController: phoneController,
                      myIcon: Icons.phone,
                      myText: 'Phone',
                      myTextInputType: TextInputType.phone,
                      myObscureText:false,
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
                    MyTextFormField(
                      myController: confirmPasswordController,
                      myIcon: Icons.lock,
                      myText: 'Confirm Password',
                      myTextInputType: TextInputType.visiblePassword,
                      myObscureText: true,
                    ),
                    MyButton(
                      myOnTap: validateAndSave,
                      myTextButton: 'Register',
                      myFillColor: helper.frontColor,
                      myTextColor: const Color(0xFFFFFFFF),
                    ),
                    MyButton(
                      myOnTap: () {
                        Navigator.pushNamed(context, helper.routeList[1]);
                      },
                      myTextButton: 'Login',
                      myFillColor: const Color(0xFFFFFFFF),
                      myTextColor: const Color(0xFF000000),
                    )
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
