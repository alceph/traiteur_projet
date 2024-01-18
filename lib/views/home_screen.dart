import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
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
                        // TypewriterAnimatedText(
                        //     'Traiteur demo',
                        //     textStyle: monPropreStyleText,
                        //     speed: const Duration (milliseconds: 200),
                        // ),
                        // RotateAnimatedText('Traiteur Demo', textStyle: monPropreStyleText),
                        // RotateAnimatedText('Mange', textStyle: monPropreStyleText),
                        // RotateAnimatedText('MANGE !!', textStyle: monPropreStyleText),

                        // TyperAnimatedText('Traiteur Demo', textStyle: monPropreStyleText),
                        // TyperAnimatedText('COMANDE !!', textStyle: monPropreStyleText),
                        // TyperAnimatedText("MANGE !!", textStyle: monPropreStyleText),

                        ColorizeAnimatedText(
                            'Bon appetito', 
                            textStyle: GoogleFonts.anton(
                                textStyle: monPropreStyleText
                            ),
                            colors: [
                                Colors.purple,
                                Colors.blue,
                                Colors.yellow,
                                Colors.red,
                                ],
                                ),

                        ColorizeAnimatedText(
                            'COMMANDE', 
                            textStyle: GoogleFonts.kalam(
                                textStyle: monPropreStyleText
                            ), 
                            colors: [
                                Colors.purple,
                                Colors.blue,
                                Colors.yellow,
                                Colors.red,
                                ],
                                ),

                                ColorizeAnimatedText(
                            'MANGE', 
                            textStyle: const TextStyle(
                            fontFamily: 'Horizon',
                            fontSize: 50,
                            ), 
                            colors: [
                                Colors.purple,
                                Colors.blue,
                                Colors.yellow,
                                Colors.red,
                                ],
                                ),
                        RotateAnimatedText('Traiteur Demo', textStyle: monPropreStyleText),
                        RotateAnimatedText('Mange', textStyle: monPropreStyleText),
                        RotateAnimatedText('MANGE !!', textStyle: monPropreStyleText),
                    ],
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
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
                            onPressed:()=>{ print('Catalogue')},
                            child: Text('catalogue des plats',style: monPropreStyleText,),
                            ),
                            
                            
                            
                            const SizedBox(
                                height: 30,
                            ),




                            ElevatedButton(
                                style:monPropreStyleButton,
                            onPressed:()=>{print('Gestion des commandes')},
                            child:  Text('Gestion des commandes',style:monPropreStyleText),
                            ),
                            
                            
                            const SizedBox(
                                height: 30,
                            ),


                            ElevatedButton(
                            style: monPropreStyleButton,
                            onPressed:()=>{print('Espaces clients')},
                            child: Text('Espaces clients', style: monPropreStyleText,),
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




