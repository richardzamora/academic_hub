import 'package:academic_hub/loginDark.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MantenimientoDark extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.orange, //or set color with: Color(0xFF0000FF)

    ));
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
          backgroundColor:Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Color(0xFF18D191))),
      body: Center(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Stack(
                  alignment: Alignment.center,
                  children: <Widget>[

                    new Container(
                        margin: new EdgeInsets.only(left: 1.0, top: 10.0),
                        width: 220.0,
                        child: Image.asset('assets/images/Logo.png')
                    ),

                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 2.0),
              child: new Text(
                "Valor de la version completa:",
                style: new TextStyle(fontSize: 26.0, color: Color(0xFF18D191)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
              child: new Text(
                "1 Alma humana",
                style: new TextStyle(fontSize: 26.0, color: Color(0xFF18D191)),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => LoginPageDark()
                        ));
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF18D191),
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Confirmar compra",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
