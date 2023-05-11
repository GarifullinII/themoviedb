import 'package:flutter/material.dart';

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
          'Войти в свою учётную запись',
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
        children: const [
          SizedBox(
            height: 25.0,
          ),
          Text(
            'Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. '
            'Если у вас нет учётной записи, её регистрация является бесплатной и простой.',
            style: textStyle,
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            'Если Вы зарегистрировались, но не получили письмо для подтверждения, нажмите здесь, чтобы отправить письмо повторно.',
            style: textStyle,
          ),
          SizedBox(
            height: 25.0,
          ),
          _FormWidget(),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Имя пользователя',
          style: textStyle,
        ),
        const SizedBox(
          height: 5.0,
        ),
        const TextField(
          decoration: textFieldDecorator,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          'Пароль',
          style: textStyle,
        ),
        const SizedBox(
          height: 5.0,
        ),
        const TextField(
          decoration: textFieldDecorator,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Войти',
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Сбросить пароль',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
