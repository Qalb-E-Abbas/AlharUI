import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _value = false;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Additions', style: TextStyle(
          fontWeight:FontWeight.bold, color: Colors.black
        ),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_outlined, color: Colors.black,),
      ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Note: The price may change with the change of sugar, size, and request', style: TextStyle(
                    color: Colors.red
                  ),),

                  SizedBox(height: 20,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text('Size', style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24
                      ),),

                      Padding(
                        padding: const EdgeInsets.only(bottom:5.0),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/size.png'),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),

                            SizedBox(width: 7,),

                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/size.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),

                            SizedBox(width: 7,),

                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/size.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),

                          ],
                        ),
                      )

                    ],
                  ),

                  SizedBox(height: 15,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text('Sugar', style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24
                      ),),

                     Padding(
                       padding: const EdgeInsets.only(bottom:4.0),
                       child: Row(
                            children: [
                              Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/sugar.png'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),

                              SizedBox(width: 9,),

                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/sugar.png'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),

                              SizedBox(width: 9,),

                              Container(
                                height: 37,
                                width: 37,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/sugar.png'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),

                            ],
                          ),
                     ),


                    ],
                  ),

                  SizedBox(height: 25,),



                  Text('Add on request', style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24
                  ),),



                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.white,
                    child: ListView(
                      children: [
                        CheckboxListTile(value: _value,
                            onChanged: (value){

                          setState(() {
                            _value = value;
                          });
                        },
                        title: Text('Extra shot'),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.white,
                    child: ListView(
                      children: [
                        CheckboxListTile(value: _value,
                          onChanged: (value){

                            setState(() {
                              _value = value;
                            });
                          },
                          title: Text('Triple Shot'),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.white,
                    child: ListView(
                      children: [
                        CheckboxListTile(value: _value,
                          onChanged: (value){

                            setState(() {
                              _value = value;
                            });
                          },
                          title: Text('Caramal'),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Comments', style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22
                      ),),

                      Container(
                        child: TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: InputBorder.none
                          ),

                        ),
                        margin: EdgeInsets.only(top: 5),
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3)
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 20,),



                  ElevatedButton(onPressed: (){},
                      child: Text('Add to cart', style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.brown[300]
                          )
                      ),
                    ),

                  )





                ],
              ),
            ),
          ),
    )
    );
  }
}
