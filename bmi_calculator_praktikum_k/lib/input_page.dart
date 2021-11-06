import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0XFF0A0E21), Color(0xFF1D1E33)]
              )
            ),
          ),
        ),
        body: Column(
          children: [
            //widget untuk jenis kelamin
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    tinggi: 200.0,
                    lebar: 179.0,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    tinggi: 200.0,
                    lebar: 179.0,
                )),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                //widget untuk tinggi
                Expanded(
                    child: ReusableCard(
                  colour: Color(0xFF1D1E33),
                  tinggi: 200.0,
                  lebar: 179.0,
                )),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                //widget untuk mengatur berat dan tinggi
                Expanded(
                    child: ReusableCard(
                  colour: Color(0xFF1D1E33),
                  tinggi: 200.0,
                  lebar: 179.0,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: Color(0xFF1D1E33),
                  tinggi: 200.0,
                  lebar: 179.0,
                )),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                //widget untuk mengatur tombol
                Expanded(
                    child: ReusableCard(
                  colour: Color(0xFF1D1E33),
                  tinggi: 200.0,
                  lebar: 179.0,
                )),
              ],
            ))
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.colour, required this.tinggi, required this.lebar});

  Color colour;
  double tinggi, lebar;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour, //Color(0xFFD1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: tinggi,
      width: lebar,
    );
  }
}