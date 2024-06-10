// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../controller/login_controller.dart';

class CadastrarView extends StatefulWidget {
  const CadastrarView({super.key});

  @override
  State<CadastrarView> createState() => _CadastrarViewState();
}

class _CadastrarViewState extends State<CadastrarView> {
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtCidade = TextEditingController();
  var txtCep = TextEditingController();
  var txtRua = TextEditingController();
  var txtNumero = TextEditingController();
  var txtComplemento = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: Column(
          children: [
            Text(
              'Criar Conta',
              style: TextStyle(fontSize: 60),
            ),
            SizedBox(height: 60),
            TextField(
              controller: txtNome,
              decoration: InputDecoration(
                  labelText: 'Nome',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 15),
            TextField(
              controller: txtEmail,
              decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 15),
            TextField(
              controller: txtSenha,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 15),
            TextField(
              controller: txtCidade,
              decoration: InputDecoration(
                  labelText: 'Cidade',
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 15),
            TextField(
              controller: txtCep,
              decoration: InputDecoration(
                  labelText: 'CEP',
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 15),
            TextField(
              controller: txtRua,
              decoration: InputDecoration(
                  labelText: 'Rua',
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 15),
            TextField(
              controller: txtNumero,
              decoration: InputDecoration(
                  labelText: 'Número',
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 15),
            TextField(
              controller: txtComplemento,
              decoration: InputDecoration(
                  labelText: 'Complemento',
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('cancelar'),
                ),
                ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(100, 40),
                  ),
                  onPressed: () {
                    LoginController().criarConta(
                      context,
                      txtNome.text,
                      txtEmail.text,
                      txtSenha.text,
                      txtCidade.text,
                      txtCep.text,
                      txtRua.text,
                      txtNumero.text,
                      txtComplemento.text,
                    );
                  },
                  child: Text('salvar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
