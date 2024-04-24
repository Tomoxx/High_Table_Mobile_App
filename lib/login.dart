import 'package:flutter/material.dart';
import 'package:high_table_app/profile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para autenticar al usuario
                String username = _usernameController.text;
                String password = _passwordController.text;

                //imprimimos el nombre de usuario y la contraseña
                print('Username: $username');
                print('Password: $password');

                print('Navegar a la otra página');
                //crear ruta para navegar a la página
                MaterialPageRoute routeProfile = MaterialPageRoute(builder: (context) {
                  return ProfilePage();
                });
                //ejecutar la ruta
                Navigator.push(context, routeProfile);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text('Login',
                style: TextStyle(fontFamily: 'Inder',),
                ),
            ),
        ],
      ),
    );
  }
}