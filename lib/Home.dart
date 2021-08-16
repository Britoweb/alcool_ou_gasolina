import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var texto =  Text(
      "Saiba qual a melhor opção para abastecimentodo esu carro",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        fontStyle: FontStyle.italic,
      ),
    );

    var saveButton = (String texto) => ElevatedButton(
        onPressed: () {},
        child: Text(
            "$texto",
          style: TextStyle(
            fontSize: 22,
          ),
        ));

    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: (
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Image.asset("images/logo.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: texto,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Preço Álcool ex: 4.59",
                  ),
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _controllerAlcool,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Preço Gasolina ex: 6.01",
                  ),
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _controllerGasolina,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: saveButton(
                      "Calcular"
                  ),
                ),
                Padding(
                    padding: EdgeInsetsDirectional.only(top: 20),
                  child: Text(
                    "Resultado",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
