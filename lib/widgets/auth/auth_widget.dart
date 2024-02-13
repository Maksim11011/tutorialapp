import 'package:flutter/material.dart';
import '../../Theme/app_button_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login to your accaunt',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: const [
          HeaderWidget(),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 14,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          const _FormWidget(),
          const SizedBox(height: 25),
          const Text(
            'Мотивация - это побуждение к действию, которое возникает в результате какого-то стимула. Она является ключевым фактором, который позволяет нам достигать целей и улучшать свою жизнь. Если вы думаете, что человеком с «горящими глазами» можно только родиться, то вы ошибаетесь.',
            style: textStyle,
          ),
          const SizedBox(height: 5),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: const Text('Register'),
          ),
          const SizedBox(height: 25),
          const Text(
            '«Чтобы достичь успеха, перестаньте гнаться за деньгами, гонитесь за мечтой». ...',
            style: textStyle,
          ),
          const SizedBox(height: 5),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: const Text('Verify Email'),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget();

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  String? errorText;
  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;

      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Неверный логин или пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('Reset password');
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 14,
    );
    const color = Color(0xff01b4e4);
    const textFielDecoration = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.red,
            ),
          )
        ],
        const SizedBox(height: 20),
        const Text(
          'Username',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _loginTextController,
          decoration: textFielDecoration,
        ),
        const SizedBox(height: 20),
        const Text(
          'Password',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _passwordTextController,
          decoration: textFielDecoration,
          obscureText: true,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                foregroundColor: const MaterialStatePropertyAll(Colors.white),
                textStyle: const MaterialStatePropertyAll(
                  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              onPressed: _auth,
              child: const Text(
                'Login',
              ),
            ),
            const SizedBox(width: 20),
            TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: _resetPassword,
              child: const Text(
                'Reset password',
              ),
            ),
          ],
        )
      ],
    );
  }
}
