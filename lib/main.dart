import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home : gsPage1(),
  ));
}

class logInPage extends StatefulWidget {
  @override
  _logInPageState createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  bool secureText=false;

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            SizedBox(height:100.0),
            Image(
              image: AssetImage(
                  'assets/Group 2.png',
              ),
            ),
            SizedBox(height:80.0),
            TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                maxLength: 20,
                maxLines: 1,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: HexColor('FFFFFF'),
                  errorText:null,
                  labelText: 'Email Address',
                  hintStyle: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 5
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: HexColor('AAA69D')),
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: HexColor('383734'))
                  ),
                  prefixIcon: Icon(
                      Icons.alternate_email,
                      color: HexColor('FF793F'),
                      size: 25.0
                  ),
                )
              ),
            SizedBox(height:10.0),
              TextFormField(
                maxLength: 20,
                maxLines: 1,
                decoration: InputDecoration(
                    filled:true,
                    fillColor: HexColor('FFFFFF'),
                    labelText: 'Password',
                    errorText: null,
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 5
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor('AAA69D')),
                        borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor('383734'))
                    ),
                    prefixIcon: Icon(
                      Icons.enhanced_encryption,
                        color: HexColor('FF793F'),
                        size: 25.0,
                    ),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          secureText=!secureText;
                        });
                      },
                      icon: Icon(
                        secureText ? Icons.remove_red_eye_outlined: Icons.security,
                        color: HexColor('FF793F'),
                        size: 25.0,
                      )
                    )

                    ),
                obscureText: secureText,
                  ),
            Container(
              width: 200.0,
              height: 45,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                onPressed: (){
                    Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context){
                      return signUp();
                      }
                      )
                    );
                },
                child: Text('Log In',style: TextStyle(
                  color: Colors.white,
                ),),
                color: HexColor('FF793F'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:33.0,right:30.0,top:13.0),
              child: Row(
                children: <Widget>[
                  Text('Not yet a user?'),
                  InkWell(
                    child: Text('Create an account.',style: TextStyle(
                      color: Colors.blue,
                    ),),
                    onTap: () {
                      Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context){
                            return signUp();
                          }
                          )
                      );
                    }
                  )
                ],
              )
            ),
          ],
        ),
      ),
      backgroundColor: HexColor('F7F1E3'),
    );
  }
}

//Get Started page 1
class gsPage1 extends StatefulWidget {
  @override
  _gsPage1State createState() => _gsPage1State();
}

class _gsPage1State extends State<gsPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: new AssetImage("assets/GS1.png"), fit: BoxFit.cover,),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 500,right:80,left:80),
            child: Container(
              width: 200.0,
              height: 45,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                onPressed: (){
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context){
                        return gsPage2();
                      }
                      )
                  );
                },
                child: Text('Next',style: TextStyle(
                  color: HexColor('B33939'),
                ),),
                color: HexColor('FFFFFF'),
              ),
            ),
          )


        ]
      )
    );
  }
}
//Get Started page 2
class gsPage2 extends StatefulWidget {
  @override
  _gsPage2State createState() => _gsPage2State();
}

class _gsPage2State extends State<gsPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: new AssetImage("assets/GS2.png"), fit: BoxFit.cover,),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 500,right:80,left:80),
                child: Container(
                  width: 200.0,
                  height: 45,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    onPressed: (){
                      Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context){
                            return gsPage3();
                          }
                          )
                      );
                    },
                    child: Text('Log In',style: TextStyle(
                      color: HexColor('B33939'),
                    ),),
                    color: HexColor('FFFFFF'),
                  ),
                ),
              ),
            ]
        )
    );
  }
}
//Get started page 3
class gsPage3 extends StatefulWidget {
  @override
  _gsPage3State createState() => _gsPage3State();
}

class _gsPage3State extends State<gsPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: new AssetImage("assets/GS3.png"), fit: BoxFit.cover,),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 500,right:80,left:80),
                child: Container(
                  width: 200.0,
                  height: 45,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    onPressed: (){
                      Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context){
                            return logInPage();
                          }
                          )
                      );
                    },
                    child: Text('Log In',style: TextStyle(
                      color: HexColor('B33939'),
                    ),),
                    color: HexColor('FFFFFF'),
                  ),
                ),
              ),
            ]
        )
    );
  }
}

class getStarted extends StatefulWidget {
  @override
  _getStartedState createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        image: AssetImage('assets/JEEPNEY.png'),
      ),
    );
  }
}

class signUp extends StatelessWidget{
  @override
  Widget fieldLabels(String queryQ){
    return Container(
      margin: EdgeInsets.only(left:30, top:30),
      child: Text(
        queryQ,
        style: TextStyle(
            color: Colors.white
        ),
      ),
    );
  }
  Widget fieldFormat(Widget iconTemplate){
    return Container(
      margin: EdgeInsets.only(left:30,right:30),
      child: TextField(
        decoration: InputDecoration(
          filled:true,
          fillColor: HexColor("FF8D5C"),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              )
          ),
          prefixIcon: iconTemplate,
        ),
      ),
    );
  }

  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: HexColor("FF793F"),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top:70,bottom: 20),
              child: Text(
                "Register",
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
          ),
        fieldLabels('GCash ACCOUNT NUMBER'),
        fieldFormat(Icon(Icons.account_balance_wallet)),
        fieldLabels('EMAIL ADDRESS'),
        fieldFormat(Icon(Icons.email_outlined)),
        fieldLabels('FIRST NAME'),
        fieldFormat(Icon(Icons.account_circle)),
        fieldLabels('LAST NAME'),
        fieldFormat(Icon(Icons.account_circle)),
        fieldLabels('PASSWORD'),
        fieldFormat(Icon(Icons.enhanced_encryption)),
        fieldLabels('RE-ENTER PASSWORD'),
        fieldFormat(Icon(Icons.enhanced_encryption)),
        SizedBox(height: 35),
        Center(
            child: Container(
          height: 50.0,
          width: 317.0,
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context){
                      return homePage();
                    }
                    )
                );
              },
              child: Text('SIGN UP',style: TextStyle(
                color: HexColor('FF793F'),
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
                letterSpacing: 2,
              ),),
              color: Colors.white,
          ),

        ),
        ),
        Center(
          child: Container(
              width: 200.0,
              height: 200.0,
              margin: EdgeInsets.all(10.0),
              child: Image(
                  image: AssetImage('assets/LOGO.png')
              )
          )
          ),
    ]
    )
    ),
      ),
    );
  }
}

//Qr code scanner
class QRcode extends StatefulWidget {
  @override
  _QRcodeState createState() => _QRcodeState();
}

class _QRcodeState extends State<QRcode> {
  String data="";

  scan() async{
    await FlutterBarcodeScanner.scanBarcode(
        "#000000","Cancel", false, ScanMode.BARCODE)
        .then((value) => setState(() => data = value));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100.0),
            FlatButton(
              child:Text('scan'),
              onPressed: ()=>scan(),
            ),
            Text(data),
          ],
        ),
      ),
    );
  }
}
//home page
class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: new AppBar(
        backgroundColor: HexColor("FF793F"),
      ),
      drawer: new Drawer(
        child: Container(
          color: HexColor('FFDA79'),
          child: Container(
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.all(12),
            child: ListView(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                    radius: 50,
                  ),
                  SizedBox(height: 10.0),
                  Divider(height: 2, thickness:1,indent: 2),
                  SizedBox(height: 10.0),
                  Center(
                    child: Text("Robbie June D. Digman",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: Colors.white,
                    ),),
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                      leading: Icon(Icons.attach_money,size: 35,color: Colors.white,),
                      title: new Text(
                        "Promos",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                    ),
                  SizedBox(height: 10.0),
                  new ListTile(
                    leading: Icon(Icons.wc,size: 35, color: Colors.white,),
                    title: new Text(
                      "Invite People",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(height: 10.0),
                  new ListTile(
                    leading: Icon(Icons.settings,size: 35,color: Colors.white,),
                    title: new Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(height: 10.0),
                  new ListTile(
                    leading: Icon(Icons.help,size: 35, color: Colors.white,),
                    title: new Text(
                      "Help",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(height: 10.0),
                  new ListTile(
                    leading: Icon(Icons.logout,size: 35,color: Colors.white,),
                    title: new Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),
                ]
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
            children: <Widget>[
              Image(
                  image: AssetImage("assets/HOMESCREEN.png")
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(left:50,top:575, bottom:70,right: 50),
                  width: 250,
                  height: 70,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    onPressed:(){
                      Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context){
                            return QRcode();
                          }
                          )
                      );
                    },
                    child: Text(
                      'SCAN CODE',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: HexColor('808080'),
                      ),),
                    color: HexColor('FFE08D'),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}