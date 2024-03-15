import 'package:flutter/material.dart';
import 'package:reglab/home_page.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Регистрация'
      ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only( left: 10, right: 10),
                  margin: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.center,
                  child: TextField(style: TextStyle(fontSize: 20, color: Colors.black
                  ),
                    decoration: InputDecoration(hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                        prefixIcon: Icon(Icons.mail),
                        hintText: 'Электронная почта',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 3)
                        )
                    ),
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 8),
                  child: TextField(style: TextStyle(fontSize: 20, color: Colors.black
                  ),
                    decoration: InputDecoration(hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                        prefixIcon: Icon(Icons.password),
                        hintText: 'Пароль',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 3)
                        )
                    ),
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 8),
                  child: TextField(style: TextStyle(fontSize: 20, color: Colors.black
                  ),
                    decoration: InputDecoration(hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                        prefixIcon: Icon(Icons.password),
                        hintText: 'Повторите пароль',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 3)
                        )
                    ),
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: ElevatedButton(

                  child: Text('Зарегистрироваться'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage())
                    );
                  },
                )

            )

          ],
        ),
      ),


    );
  }
}
