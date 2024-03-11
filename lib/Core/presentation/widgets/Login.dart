import 'package:bhm_app/Core/presentation/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _ifChecked = false;
  String _phoneNumber = "";
  String _password = "";

  final LocalAuthentication _localAuthentication = LocalAuthentication();

  Future<void> _auth() async {
    bool authenticated = false;
    try {
      authenticated = await _localAuthentication.authenticate(
          localizedReason: "Autenticate para acceder",
          options:
              AuthenticationOptions(stickyAuth: true, useErrorDialogs: true));
    } catch (e) {
      print(e);
    }
    if (authenticated) {
      Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
              builder: (BuildContext context) => const Home()));
    } else {
      print("Fallo auth");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: ClipOval(
              child: Image.asset('images/Visa.jpeg', fit: BoxFit.cover),
            ),
          ),
          TextField(
            decoration: const InputDecoration(hintText: 'Numero'),
            controller: TextEditingController(text: _phoneNumber),
            style: const TextStyle(color: Colors.black38),
          ),
          TextField(
              decoration: const InputDecoration(hintText: 'Password'),
              controller: TextEditingController(text: _password),
              style: const TextStyle(color: Colors.black38)),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _ifChecked,
                onChanged: (newValue) =>
                    {setState(() => _ifChecked = newValue!)},
              ),
              const Text('Matener Sesion'),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                _auth();
              },
              child: const Text('INGRESAR')),
        ],
      ),
    );
  }
}
