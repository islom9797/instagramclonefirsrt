import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
class CustomDialog extends StatelessWidget{
  const CustomDialog({Key?key,required this.data,required this.getter,this.gettercard,this.idtransaction,this.komissiya,this.sender,this.settercard,this.summa,this.typetrasn}): super(key: key);
final summa;
final getter;
final sender;
final gettercard;
final settercard;
final typetrasn;
final komissiya;
final idtransaction;
final data;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),

    );
  }
  dialogContent(BuildContext context){
    return Stack(
      children: [
        Container(
          height: 484,
          width: 327,
          padding: EdgeInsets.only(top: 20,bottom: 16,left: 16,right: 16),
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(color: Colors.black26,blurRadius: 10.0,offset: Offset(0.0,10.0)),
              ]
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(summa,style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: "Rubik-Regular"),),
                  Text("Успешно",style: TextStyle(fontSize: 14,color: Color(0xff60BA62),fontWeight: FontWeight.bold),),
                  SizedBox(height: 12,),

                  Container(
                    height: 39,
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(

                          children: [
                            Icon(Icons.lock_clock,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Вид транзакции",style: TextStyle(fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        Text("перевод на карту",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)




                      ],
                    ) ,
                  ),
                  Divider(height: 1,),
                  Container(
                    height: 39,
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(

                          children: [
                            Icon(Icons.lock_clock,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Вид транзакции",style: TextStyle(fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        Text("перевод на карту",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)




                      ],
                    ) ,
                  ),
                  Divider(height: 1,),
                  Container(
                    height: 39,
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(

                          children: [
                            Icon(Icons.lock_clock,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Вид транзакции",style: TextStyle(fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        Text("перевод на карту",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)




                      ],
                    ) ,
                  ),
                  Divider(height: 1,),
                  Container(
                    height: 39,
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(

                          children: [
                            Icon(Icons.lock_clock,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Вид транзакции",style: TextStyle(fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        Text("перевод на карту",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)




                      ],
                    ) ,
                  ),
                  Divider(height: 1,),
                  Container(
                    height: 39,
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(

                          children: [
                            Icon(Icons.lock_clock,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Вид транзакции",style: TextStyle(fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        Text("перевод на карту",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)




                      ],
                    ) ,
                  ),
                  Divider(height: 1,),
                  Container(
                    height: 39,
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(

                          children: [
                            Icon(Icons.lock_clock,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Вид транзакции",style: TextStyle(fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        Text("перевод на карту",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)




                      ],
                    ) ,
                  ),
                  Divider(height: 1,),
                  Container(
                    height: 39,
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(

                          children: [
                            Icon(Icons.lock_clock,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Вид транзакции",style: TextStyle(fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        Text("перевод на карту",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)




                      ],
                    ) ,
                  ),
                  Divider(height: 1,),
                  Container(
                    height: 39,
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(

                          children: [
                            Icon(Icons.lock_clock,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Вид транзакции",style: TextStyle(fontSize: 12,color: Colors.black),),
                          ],
                        ),
                        Text("перевод на карту",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),)




                      ],
                    ) ,
                  ),

                  SizedBox(height: 20,),
                  Center(
                    child: Icon(Icons.download_rounded),
                  ),
                  Center(
                    child: Text("сохранить",style: TextStyle(fontSize: 14,),),
                  ),




                ],
              ),

                  Container(

                    height: double.infinity     ,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close_sharp,
                            color: Colors.grey,),
                        ),
                      ],
                    )
                  ),
                ],


          )
        ),




      ],
    );
  }}
