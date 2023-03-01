import 'package:flutter/material.dart';
import 'package:gdsccourse/components/my_button.dart';
import '../components/my_paint.dart';
import '../components/my_text_form_field.dart';

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
                  height: 420,
                  width: double.infinity,
                  child: CustomPaint(
                    painter: MyPaint(),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
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
                    ),
                    MyTextFormField(
                      myController: phoneController,
                      myIcon: Icons.phone,
                      myText: 'Phone',
                      myTextInputType: TextInputType.phone,
                    ),
                    MyTextFormField(
                      myController: emailController,
                      myIcon: Icons.email,
                      myText: 'Email',
                      myTextInputType: TextInputType.emailAddress,
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
                      myColor: const Color(0xFF6339B2),
                    ),
                    MyButton(
                      myOnTap: () {
                        Navigator.pushNamed(context, '/LoginPage');
                      },
                      myTextButton: 'Login',
                      myColor: Colors.blueGrey,
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
