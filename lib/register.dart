import 'package:applyforjob/second_page_ui.dart';
import 'package:flutter/material.dart';

import 'hex_color_class/hexcolor.dart';


class Registerstateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Registerstate();
  }

}

class Registerstate extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: HexColor.fromHex("#fdeef4"),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.pink,
              child:Image(
                image: AssetImage('images/topest_photo.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
                width:130,
                height:130,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/left_side_button.png'),fit: BoxFit.cover)
                ),
                child: Center(
                  child: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,),
                )
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40, top: 60),
              margin: EdgeInsets.only(top:250,left: 5,right: 5),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(25.0),
                boxShadow:[BoxShadow(
                  color:Colors.grey.withOpacity(0.4),
                  spreadRadius:1,
                  blurRadius:5,
                  offset:Offset(0,3),
                )],
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Register",style: TextStyle(color: HexColor.fromHex("#FB6F92"),fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  SizedBox(height: 30,),
                  Center(
                      child:Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: HexColor.fromHex("#fef2ef"),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: BorderSide(
                                    color:HexColor.fromHex("#FF9DB0"),
                                    width:2,
                                  ),

                                ),
                                border:InputBorder.none,
                              ),
                            ),
                            SizedBox(height: 25,),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: HexColor.fromHex("#fef2ef"),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: BorderSide(
                                    color:HexColor.fromHex("#FF9DB0"),
                                    width:2,
                                  ),
                                ),
                                border:InputBorder.none,
                              ),
                            ),
                            SizedBox(height: 25,),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: HexColor.fromHex("#fef2ef"),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: BorderSide(
                                    color: HexColor.fromHex("#FF9DB0"),
                                    width:2,
                                  ),

                                ),
                                suffixIcon: IconButton(icon : Icon(Icons.remove_red_eye), onPressed: (){}, color: HexColor.fromHex("#FB6F92"),),
                                border:InputBorder.none,
                              ),
                            ),

                          ],
                        ),
                      )
                  ),
                  Expanded(child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom:30),
                          child:SizedBox(
                            width: double.infinity,
                            height: 50,
                            child:ElevatedButton(
                                onPressed: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Secondpageui()));
                                },
                                child: Text("Create Account"),
                                style: ElevatedButton.styleFrom(
                                    primary: HexColor.fromHex("#FF9DB0")
                                )
                            ),
                          )
                      )
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {

  }
}

