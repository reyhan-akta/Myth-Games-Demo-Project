import 'package:applyforjob/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hex_color_class/hexcolor.dart';

class Secondpageui extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Secondpageuistate();
  }

}

class Secondpageuistate extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height:double.infinity,
          color: Colors.white,
          child:Column(
            children: [
              Stack(
                children: <Widget>[
                  Image(image: AssetImage('images/second_page_image_1.png'),
                    width: 407.98,height: MediaQuery.of(context).size.height * 0.36,fit: BoxFit.fill,),
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
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
                    child:Image(image: AssetImage('images/second_page_image_2.png'),
                      width: MediaQuery.of(context).size.width * 0.42,height: MediaQuery.of(context).size.height * 0.22,) ,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.28),
                      child: Padding(
                          padding: EdgeInsets.only(left: 40),
                          child:Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("One last step!",style: TextStyle(color: HexColor.fromHex("#FB6F92"),fontSize: 25, fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(height: 30,),
                              Text("Please click the activation link we sent to your email",style: TextStyle(color: HexColor.fromHex("#FB6F92"),))
                            ],
                          )

                      )
                  ),
                ],
              ),
              Container(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.29,
                  image: AssetImage('images/middle_photo.jpg'),
                ),
              ),
              Expanded(child: Align(
                  alignment: Alignment.bottomCenter,
                  child:Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      children: <Widget>[
                        Image(image: AssetImage('images/second_page_bottom_section.png',),height: double.infinity,fit: BoxFit.fill,),
                        Column(
                          children: [
                            Expanded(child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom:30,left: 40,right: 40),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                      onPressed: (){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Registerstateful()));
                                      },
                                      child: Text("Let's Get Started"),
                                      style: ElevatedButton.styleFrom(
                                          primary: HexColor.fromHex("#FF9DB0")
                                      )
                                  ),
                                ),
                              ),))
                          ],
                        )

                      ],
                    ),
                   /* margin: EdgeInsets.only(bottom: 0),
                    child: Stack(
                      children: <Widget>[
                        Image(image: AssetImage('images/second_page_bottom_section.png')),
                        /*Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                                child:Container()) */
                      ],
                    ) */
                  )
                /*Stack(
                    children: <Widget>[
                      Image(image: AssetImage('images/second_page_bottom_section.png')),
                      Positioned(
                          bottom : 30,
                          child:Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: ElevatedButton(
                              onPressed: (){},
                              child: Text("xx"),
                            )
                          )
                           /*SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: (){

                                },
                                child: Text("Let's Get Started!"),
                              ),
                            ),
                          )*/
                      )
                    ],
                  )*/
              )),



            ],
          )
      ),
    );
  }

}