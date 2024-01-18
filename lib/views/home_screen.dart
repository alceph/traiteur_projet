import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class HomeScreen extends StatelessWidget {
    const HomeScreen ({super.key});
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: 
                
                AnimatedTextKit(
                    animatedTexts:
                    [
                        TypewriterAnimatedText(
                            
                        ),
                    ]
                    )
                
                ,
                centerTitle: true,
                actions: <Widget>[
                    PopupMenuButton(
                        icon:Icon(Icons.menu),
                        itemBuilder: (BuildContext context ) =>[
                            
                            
                            const PopupMenuItem(
                                value: 'Catalogues des plats',
                                child: ListTile(
                                    title : Text('Catalogues des plats'),
                                    leading: Icon(Icons.food_bank),
                                    )
                                
                            ),

                            const PopupMenuItem(
                                value: 'commandes',
                                child: ListTile(
                                    title: Text('Gestion des commandes'),
                                    leading: Icon(Icons.shopping_basket),
                                )
                            ),




                            const PopupMenuItem(
                                value: 'cient',
                                child: ListTile(
                                    title: Text('Espace client'),
                                    leading: Icon(Icons.settings),
                                )
                            ),
                            
                        ]
                    )

                ],
            ),
            body:  Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        ElevatedButton(
                            style: monPropreStyleButton,
                            onPressed:()=>{},
                            child: Text('catalogue des plats',style: monPropreStyleText,),
                            ),
                            
                            
                            
                            const SizedBox(
                                height: 30,
                            ),




                            ElevatedButton(
                                style:monPropreStyleButton,
                            onPressed:()=>{},
                            child:  Text('Gestion des commandes',style:monPropreStyleText),
                            ),
                            
                            
                            const SizedBox(
                                height: 30,
                            ),


                            ElevatedButton(
                            style: monPropreStyleButton,
                            onPressed:()=>{},
                            child: Text('Espaces cleints', style: monPropreStyleText,),
                            ),
                    ],
                )
            ),
        );
    }
}



ButtonStyle monPropreStyleButton = ElevatedButton.styleFrom(
foregroundColor: Colors.purple,
                                    backgroundColor: Colors.white,
                                    minimumSize: const Size(300, 50),
                                    shape:const StadiumBorder(
                                        side: BorderSide(
                                            color:Colors.purple,
                                            width: 2.0,
                                        ),
                                    ),
);



TextStyle monPropreStyleText = const TextStyle(
    color: Color.fromARGB(255, 129, 38, 72),
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto Serif',
);




