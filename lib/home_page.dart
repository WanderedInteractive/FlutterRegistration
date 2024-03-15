import 'package:flutter/material.dart';
import 'package:reglab/example_button.dart';
import 'package:reglab/example_text_field.dart';
import 'package:reglab/login_page.dart';
import 'package:reglab/registration_page.dart';



class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(

                flex: 4,
                child: Container(
                  alignment: Alignment.center,
                  child: Image.network('https://i.pinimg.com/originals/f2/a7/22/f2a722309717f8ca203b024698c587ac.jpg'),
                )
            ),
            Expanded(
                flex: 2,
                child: Container(
                  width: 200,
                  height: 10,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_box_sharp),
                        border: OutlineInputBorder(),
                        hintText: 'Введите логин:'
                    ),
                    maxLength: 30,
                  ),
                )
            ),
            Expanded(
                flex: 2,
                child: Container(
                  width: 200,
                  height: 10,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: ExampleTextField(HintText: 'Введите пароль:', MAXLength: 10)
                )
            ),
            Expanded(
                child: Container(

            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 8),
              child: ElevatedButton(
                  child: ExampleButton(text: 'Войти'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login())
                    );
                  }
              ),
            )
            ),
            Expanded(child: Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                  child: ExampleButton(text: 'Зарегистрироваться'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration())
                    );
                  }
            )
            )
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text('Приложение для авторизации'),),
    );
  }
}