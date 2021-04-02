import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirayes_flutter/mirayes_flutter.dart';
import 'package:mirayes_flutter/widgets/typographies/h1.dart';

class MirayesLoginScaffold1 extends StatefulWidget {
  final MirayesConstants constants;
  final String title;
  final String subTitle;

  final String labelLogin;
  final String labelSenha;
  final String labelEsqueceu;

  final TextEditingController loginController;
  final TextEditingController senhaController;
  final onSubmit;

  const MirayesLoginScaffold1({
    Key? key,
    required this.constants,
    required this.title,
    required this.onSubmit,
    required this.loginController,
    required this.senhaController,
    this.subTitle = '',
    this.labelLogin = 'E-mail',
    this.labelSenha = 'Senha',
    this.labelEsqueceu = '',
  }) : super(key: key);

  @override
  _MirayesLoginScaffold1State createState() => _MirayesLoginScaffold1State();
}

class _MirayesLoginScaffold1State extends State<MirayesLoginScaffold1> {
  final _formKey = GlobalKey<FormState>();

  double getCardWidth(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return 0.0;
    } else if (Responsive.isTablet(context)) {
      return MediaQuery.of(context).size.width * 0.1;
    } else if (Responsive.isDesktop(context)) {
      return MediaQuery.of(context).size.width * 0.25;
    } else {
      return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor.withOpacity(0.5),
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 36.0,
                    horizontal: getCardWidth(context) + 24.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MirayesTypographyH1(
                        text: widget.title,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.subTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: getCardWidth(context)),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // =====================================
                          // = LOGIN
                          // =====================================
                          InputField(
                            constants: widget.constants,
                            label: widget.labelLogin,
                            icon: Icons.email,
                            controller: widget.loginController,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          // =====================================
                          // = SENHA
                          // =====================================
                          InputField(
                            constants: widget.constants,
                            label: widget.labelSenha,
                            icon: Icons.lock,
                            isPassword: true,
                            controller: widget.senhaController,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          if (widget.labelEsqueceu.isNotEmpty)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  widget.labelEsqueceu,
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Theme.of(context).primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  widget.onSubmit();
                                } else {
                                  Get.snackbar(
                                    'Opsss !!!',
                                    'Todos os campos são obrigatórios.',
                                    snackPosition: SnackPosition.BOTTOM,
                                  );
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16.0,
                                ),
                                child: Text("Login"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputField extends StatefulWidget {
  final constants;
  final label;
  final icon;
  final isPassword;
  final controller;

  InputField(
      {Key? key,
      required this.constants,
      required this.label,
      required this.icon,
      required this.controller,
      this.isPassword = false})
      : super(key: key);
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      obscureText: widget.isPassword,
      autofocus: true,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Color(0xFFe7edeb),
        focusColor: Theme.of(context).primaryColor,
        hintText: widget.label,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        prefixIcon: Icon(
          widget.icon,
          color: Colors.grey,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Campo obrigatório.';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
