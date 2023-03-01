// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Form Validation Demo';

//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//         ),
//         body: const MyCustomForm(),
//       ),
//     );
//   }
// }

// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({super.key});
//   @override
//   MyCustomFormState createState() {
//     return MyCustomFormState();
//   }
// }

// class MyCustomFormState extends State<MyCustomForm> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextFormField(
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please enter some text';
//               }
//               return null;
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Processing Data')),
//                   );
//                 }
//               },
//               child: const Text('Submit'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 85,
                  ),
                  MyTextField(
                    myController: nameController,
                    myIcon: Icons.person,
                    myText: 'Full Name',
                    myTextInputType: TextInputType.name,
                  ),
                  MyTextField(
                    myController: phoneController,
                    myIcon: Icons.phone,
                    myText: 'Phone',
                    myTextInputType: TextInputType.phone,
                  ),
                  MyTextField(
                    myController: emailController,
                    myIcon: Icons.email,
                    myText: 'Email',
                    myTextInputType: TextInputType.emailAddress,
                  ),
                  MyTextField(
                    myController: passwordController,
                    myIcon: Icons.lock,
                    myText: 'Password',
                    myTextInputType: TextInputType.visiblePassword,
                    myObscureText: true,
                  ),
                  MyTextField(
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
                    myOnTap: validateAndSave,
                    myTextButton: 'Login',
                    myColor: Colors.blueGrey,
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
