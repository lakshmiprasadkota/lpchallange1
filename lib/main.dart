import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),


      home: Lp(),
    );
  }
}

class Lp extends StatefulWidget{
  @override
  _LpState createState() => _LpState();

}

class _LpState extends State<Lp>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[


            Container(
              child: Stack(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.fromLTRB(80, 100, 0,0),

                    child: Text( "VI" , style: TextStyle(fontSize:60,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(126, 95, 0,0),

                    child: Text( "." , style: TextStyle(fontSize:80,fontWeight: FontWeight.bold,color: Colors.yellowAccent)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(13, 200, 0,0),

                    child: Text( "sign in using your VI acunt" , style: TextStyle(fontSize:15,fontStyle:FontStyle.italic, fontWeight:FontWeight.bold, color: Colors.redAccent)),
                  )
                ],

              ),

            ),
            SizedBox(height: 70.0,),
            buildTextField("Phone Number"),
            SizedBox(height: 20.0,),
            buildTextField("Password"),
            SizedBox(height: 10.0,),
            Container(
              child: Row(

                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 130,0),
                    child: Row(

                      children: <Widget>[
                        Text("Forget Password?"  ,style: TextStyle(fontSize:10, fontStyle:FontStyle.italic, color:Colors.redAccent)),
                        SizedBox(width: 10.0),
                        Text("Click Here To Reset", style: TextStyle(fontSize:10, fontWeight:FontWeight.bold, fontStyle:FontStyle.italic,color:Colors.yellow,))
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 100.0),
            Container(
              height: 60,
              color:Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color:Colors.black,
                        style: BorderStyle.solid,
                        width: 1
                    ),
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: Text(' Sign up',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold

                      ),
                    ),
                  )

              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 60,
              color:Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color:Colors.black,
                        style: BorderStyle.solid,
                        width: 1
                    ),
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: Text(' login with face book',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )

              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"  ,style: TextStyle(fontStyle:FontStyle.italic, color:Colors.redAccent,fontSize: 10)),
                    SizedBox(width: 10.0),
                    Text("SIGN UP", style: TextStyle(fontWeight:FontWeight.bold, fontStyle:FontStyle.italic,color:Colors.yellow,fontSize: 10))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 8.0,
        ),
        border: OutlineInputBorder(

         borderSide: BorderSide(color: Colors.white)

        ),

        enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white,
    width: 2.0,
    ),),
        prefixIcon: hintText == "Phone Number" ? Icon(Icons.phone) : Icon(Icons.lock),
        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,

          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ) : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }



}
