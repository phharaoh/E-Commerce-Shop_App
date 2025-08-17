import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:e_commerce_app/views/widgets/custom_txt_form.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscurePass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                //! Logo
                // Image.asset(''),

                //! Email Form Feild
                CustomTxtForm(
                  hintText: 'Email',
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      return null;
                    } else {
                      return 'incorrect email';
                    }
                  },
                ),

                //! Password Form Feild
                CustomTxtForm(
                  obscureText: _obscurePass,
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscurePass = !_obscurePass;
                      });
                    },
                    icon: Icon(
                      _obscurePass ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      return null;
                    } else {
                      return 'incorrect password';
                    }
                  },
                ),

                //!
                TextButton(onPressed: () {}, child: const Text('')),
                //! SignIn Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.go('/home');
                    }
                  },
                  child: const Text('SignIn'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
