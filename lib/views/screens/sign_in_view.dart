import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:e_commerce_app/views/widgets/custom_txt_form.dart';
import 'package:e_commerce_app/views/widgets/custom_elevated_btn.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  //! Logo
                  Image.asset(
                    'assets/images/logo.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 12),

                  //! Welcome Text
                  const Text(
                    'ShopSmart',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 12),

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
                  const SizedBox(height: 12),

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
                        _obscurePass
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
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
                  const SizedBox(height: 12),

                  //! SignIn Button
                  CustomElevatedBtn(
                    txt: 'Login',
                    onPress: () {
                      if (_formKey.currentState!.validate()) {
                        context.go('/home');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
