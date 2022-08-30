import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Messages extends Translations{
  @override
  Map<String, Map<String, String>> get keys =>  {
    "en_US":{
      "sign_up": "Sign Up",
      "log_in": "Login",
      "create_your_account": " Create Your\n Account",
      "register": "Register",
      "sign_in": "Sign in",
      "already_have_an_account": "Already Have An Account?",
      "continue_with_accounts": "Continue with Accounts",
      "full_name": "Full Name",
      "enter_your_email": "Enter your Email",
      "password": "Password",

    },
    "es_US":{
      "sign_up": "Inscribirse",
      "log_in": "Acceso",
      "create_your_account": " Crea tu\n Cuenta",
      "register": "Registro",
      "sign_in": "Iniciar sesión",
      "already_have_an_account": "¿Ya tienes una cuenta?",
      "continue_with_accounts": "Continuar con Cuentas",
      "full_name": "Nombre completo",
      "enter_your_email": "Introduce tu correo electrónico",
      "password": "Clave"
    }
  };

}