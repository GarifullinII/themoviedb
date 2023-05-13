import 'package:flutter/material.dart';
import '../../theme/app_button_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login to your account',
        ),
      ),
      body: const SingleChildScrollView(
        child: _LoginWidget(),
      ),
    );
  }
}

class _LoginWidget extends StatelessWidget {
  const _LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16.0,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25.0,
          ),
          const Text(
            'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. '
            'Click to get started.',
            style: textStyle,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Get started'),
            style: AppButtonStyle.linkButton,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'If you signed up but didn\'t get your verification email, '
            'click here to have it resent.',
            style: textStyle,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Resent'),
            style: AppButtonStyle.linkButton,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const _FormWidget(),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');

  void _auth() {
    final loginText = _loginTextController.text;
    final passwordText = _passwordTextController.text;

    if (loginText == 'admin' && passwordText == 'admin') {
      Navigator.pushNamed(context, '/main_screen');
    } else {
      print('Error login or password');
    }
    setState(() {});
  }

  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16.0,
      color: Color(
        0xFF212529,
      ),
    );
    const textFieldDecorator = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      isCollapsed: true,
    );
    const color = Color(0xFF01B4E4);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'User name',
          style: textStyle,
        ),
        const SizedBox(
          height: 5.0,
        ),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecorator,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          'Password',
          style: textStyle,
        ),
        const SizedBox(
          height: 5.0,
        ),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecorator,
          obscureText: true,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: _auth,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
              ),
              child: const Text(
                'Login',
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            TextButton(
              onPressed: _resetPassword,
              style: AppButtonStyle.linkButton,
              child: const Text(
                'Reset password',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
