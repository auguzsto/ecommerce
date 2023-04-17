import 'package:ecommerce/src/app/auth/constants/signin_constants.dart';
import 'package:ecommerce/src/app/auth/controller/auth_controller.dart';
import 'package:ecommerce/src/shared/widgets/text_form_custom.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final List<TextEditingController> controllers = List.generate(
    SignInConstants.label.length,
    (index) => TextEditingController(),
  );

  final authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Acesso"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CircleAvatar(
            maxRadius: 78,
            child: Icon(
              Icons.person,
              size: 88,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: SignInConstants.label.length,
              itemBuilder: (context, index) {
                return TextFormCustom(
                  controllers: controllers[index],
                  label: SignInConstants.label[index],
                  icon: SignInConstants.icon[index],
                );
              },
            ),
          ),
          SizedBox(
            height: 180,
            child: ElevatedButton.icon(
              onPressed: () async {
                await authController.signIn(
                    username: controllers[0].text,
                    password: controllers[1].text);
              },
              icon: const Icon(Icons.login),
              label: const Text("Entrar"),
            ),
          )
        ],
      ),
    );
  }
}
