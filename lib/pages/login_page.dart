import 'package:flutter/material.dart';
import 'package:frenzyapp_1/components/my_textfield.dart';
import 'package:frenzyapp_1/components/my_button.dart';
import 'package:frenzyapp_1/components/square_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // sign user in method
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF091D36),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Image.asset('lib/images/frenzylogo1.png'),
            const SizedBox(height: 10),
            Text(
              '¡ H O L A !',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color(0xFFC2D2E9),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Divider(
              height: 10,
              color: Color(0xFFC2D2E9),
              thickness: 1.5,
              indent: 90,
              endIndent: 90,
            ),
            const SizedBox(height: 12),
            Text(
              '¿Listo para crear tu colección?',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color(0xFFC2D2E9),
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 45),
            Text(
              'Iniciar Sesión',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),

            //username textfield
            MyTextField(
              controller: _usernameController,
              hintText: 'Usuario',
              obscureText: false,
            ),
            const SizedBox(height: 15),

            //password textfield
            MyTextField(
              controller: _passwordController,
              hintText: 'Contraseña',
              obscureText: true,
            ),
            const SizedBox(height: 15),
            Text(
              '¿Olvidaste Contraseña?',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 25),
            // sign in button
            MyButton(
              onTap: signUserIn,
            ),
            const SizedBox(height: 25),
            Text(
              'O Continuar Con',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 35),
            // google + facebook + apple sign in buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                //google button
                SquareTile(imagePath: 'lib/images/google.png'),
                SizedBox(width: 25),
                //apple button
                SquareTile(imagePath: 'lib/images/google.png'),
                SizedBox(width: 25),
                //facebook button
                SquareTile(imagePath: 'lib/images/facebook.png')


              ],
            ),
            const SizedBox(height: 35),
            //register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    '¿No estas registrado?',
                    style: TextStyle(color: Colors.white),
                ),

                const SizedBox(width: 4),
                const Text(
                  'Registrar ahora',
                  style: TextStyle(
                    color: Colors.blue,
                      fontWeight: FontWeight.bold
                  ),

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}