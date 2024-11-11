import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  //TODO: 1. Deklarasikan variabel
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  bool _isSignIn = false;
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //passang appbar
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      //pasang body
      body: Center(
        child: Form(
            child: Column(
          //todo 4 : atur mainaxisalign dan cross
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //todo 5: buat text formfield u usn
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Nama Pengguna',
                hintText: 'Masukkan nama Pengguna',
                border: OutlineInputBorder(),
              ),
            ),
            //todo 6 : buat textform field u pw
            const SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Kata Sandi',
                hintText: 'Masukkan kata sandi',
                border: const OutlineInputBorder(),
                errorText: _errorText.isNotEmpty ? _errorText : null,
                suffixIcon: IconButton(
                  onPressed: (){}, 
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  ),
              ),
              obsecureText : _obscurePassword,
            ),
            //todo 7 : buat elevatedbutton u sign in
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('Sign In'), 
            ),
            //TODO 8 : Pasang textbutton u sign up
            const SizedBox(height: 10,),
            TextButton(
              onPressed: () {}, 
              child: const Text('Belum punya akun? Daftar di sini'),
            ),
          ],
        )),
      ),
    );
  }
}
