import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:todoapp/screen.dart';
import 'package:todoapp/task.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final _controllerFirstName = TextEditingController();

  String firstname = "";

  

  bool _isVisible = false;

  final List<String> names = <String>[];
  List<bool> _itens = [];
_loadingItens(){

    _itens = [];
    for(var i = 0; i <100; i++)
    {
        _itens.add(false);
  
    }
  }

  @override
  void initState() {
    _loadingItens();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("TODO"),
          ),
          
          body: Column(
            children: <Widget>[
              
            const  MyScreen(),
              
             const  Divider(),
              
              

               if(names.isEmpty)
               Task()
               else
               
   
  Expanded(
                
                  child: Row(
                children: <Widget>[
                  Expanded(
                   
                      child: Container(
                        padding:
                            const EdgeInsets.only(left: 400.0, right: 400.0),
                        alignment: Alignment.center,
                        child: ListView.separated(
                            itemCount: names.length,
                            separatorBuilder:
                                (BuildContext context, int index) =>

                                    const Divider(),

                            itemBuilder: (BuildContext context, int index) {
                            

                              return Dismissible(
                                key: Key(names[index]),
                                onDismissed: (direction) {
                                  names.removeAt(index);
                                },
                                child: Center(
                                  child: ListTile(
                                   
                                    leading:

                                   Text(

                                      
                                      "       $index     ",
                                      style: const TextStyle(
                                      
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),


                                     title :Row(
                                       children: [
                                         Container(
                                           child: Checkbox(

                                              
                                              activeColor: Colors.green,
                                              checkColor: Colors.white,
                                              value: _itens[index],
                                              onChanged: (value) {
                                                setState(() {

                                                  
                                                _itens[index] = value!;
                       });
                                              }
                                              
                                              
                                              ),
                                         ),
                            
                                    Container(
                                      child:  _itens[index] ?
                                      
                                      
                                     Text(

                                        
                                        "               ${names[index]}",
                                        style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ):
                                      Text(

                                        
                                        "               ${names[index]}",
                                        style: const TextStyle(
                                        
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                     ],
                                     ),
                                    
                                    trailing: RaisedButton(
                                      child: const Text(
                                        'DELETE',
                                        style: TextStyle(fontSize: 20.0),
                                      ),

                                      color: Colors.red,
                                      textColor: Colors.white,

                                      

                                      
                               
                                      onPressed: () {
                                        setState(() {
 
                                           names.removeAt(index);

                                           
                                        });
                                      },
                                    ),
                                    
                                  ),
                                ),
                              );
                            }),
                      ),
                    
                  ),
                ],
              )
              
              ),

              const Divider(),
              

              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 600.0, right: 500.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Expanded(
                      
                      child: Container(
                          // padding:
                          //     const EdgeInsets.only(left: 500.0, right: 250.0),
                          alignment: Alignment.topCenter,
                          child: TextField(
                            controller: _controllerFirstName,
                            autocorrect: true,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Enter the Task"),

                                
                          )),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      //  padding: const EdgeInsets.only(left: 100, right: 100.0),
                       
                      
                        child: ButtonTheme(
                           minWidth: 130.0,
  height: 58.0,
                          child: RaisedButton(
                            child: const Text(
                              '+ ADD TODO',
                              style: TextStyle(fontSize: 30.0),
                            ),
                            color: Colors.green,
                            textColor: Colors.white,

                                               
                            
                            onPressed: () {
                              setState(() {

                               String t= _controllerFirstName.text;
                               

                                if (t=='') {
                                   Fluttertoast.showToast(
        msg: "ENTER SOMETHING",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0

        
    );
                                }
                                else{

     
                                   names.insert(0, _controllerFirstName.text);
                                   _isVisible = true;
                                    _controllerFirstName.clear();
                
                                }

                                
                              });
                            },
                          ),
                        ),
                      
                    ),
                ],
              ),
                  )
              ),
            ],
          ),
        );
  }
}