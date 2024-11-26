import 'package:flutter/material.dart';
import 'package:pet_adopt/view/login_screen.dart';
import '../controller/user_controller.dart';
import '../model/user_model.dart';

class CadastroScreen extends StatefulWidget {  
  const CadastroScreen({super.key});

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final _userController = UserController();
  final _formKey = GlobalKey<FormState>();
  final _user = UserModel();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();

  Future<void> _registerUser() async {
  if (_formKey.currentState!.validate()) {
    _formKey.currentState!.save();

    print("Senha: '${_passwordController.text}'");
    print("Confirmação de senha: '${_confirmpasswordController.text}'");

    if (_passwordController.text.trim() != _confirmpasswordController.text.trim()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("As senhas não coincidem!")),
      );
      return;
    }

    _user.password = _passwordController.text;
    _user.confirmpassword = _confirmpasswordController.text;

    final message = await _userController.registerUser(_user);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );

    if (message == 'Usuário cadastrado com sucesso!') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),  
      );
    }
  }
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cadastro de usuário"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    padding: EdgeInsets.zero,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.chevron_left, color: Colors.black),
                      SizedBox(width: 5),
                      Text(
                        "Voltar",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 4),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Digite seu nome",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                  onSaved: (value) => _user.name = value!,
                  validator: (value) => value!.isEmpty ? "Nome é obrigatório" : null,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Digite seu email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                  onSaved: (value) => _user.email = value!,
                  validator: (value) => value!.isEmpty ? "Email é obrigatório" : null,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Digite seu telefone",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                  onSaved: (value) => _user.phone = value!,
                  validator: (value) => value!.isEmpty ? "Telefone é obrigatório" : null,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: "Digite sua senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                  onSaved: (value) => _user.password = value!,
                  validator: (value) => value!.isEmpty ? "Senha é obrigatória" : null,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  controller: _confirmpasswordController,
                  decoration: InputDecoration(
                    hintText: "Confirme sua senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Confirmação de senha é obrigatória";
                    }
                    if (value.trim() != _passwordController.text.trim()) {
                      return "As senhas não coincidem";
                    }
                    return null;
                  },
                ),
                const Spacer(flex: 1),
                Center(
                  child: ElevatedButton(
                    onPressed: _registerUser,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Cadastrar",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
