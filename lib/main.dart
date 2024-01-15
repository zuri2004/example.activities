import 'package:flutter/material.dart';

void main() {
  // no se esta devolviendo ningun valor 
  runApp(const MyApp());
  //es donde no se puede  calculando y va en incremento ala hora de irlo ejecutando en el porgrama 
}
// lo que esta haciendo estas dos lineas de codigo; se esta declarando como obejecto "MyApp" como mi appa
//la clase es "MyApp" esta dedefiniendo la aparecia y la estructura de la apliacion 

class MyApp extends StatelessWidget {
  //nos esta ayudando a crear una plantilla para definir los objectos en la linea de codigo
  const MyApp({super.key});
//nos esta definiendo que es un valor fijo que se le esta definiendo para el moemnto de ejecutarlo vaya en incremento 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // nos esta especificando las funciones que mas se estan usando en el codigo
    return MaterialApp(
      //es donde se le da la finalidad al momento de ejecutarlo pero nos regresa el la funcion que mandamos a llamar
      title: 'Flutter Demo',
      //en esta linea de codigo se esta estableciendo el nombre de tituo¿lo de la aplicacion
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //se esta estableciendo el color de fondo de la aplicacion
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //se esta estableciendo un objecto de la cual se tambien se nos esta devolviendo la interfas del usuario
  const MyHomePage({super.key, required this.title});
  //la constante lo que esta haciendo esta creando una estancia de la cual esta definiendo como "tittle" un valor y como una estancia

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  //está declarando  como una variable llamada title, que es una clase que no tiene una herencia 

  @override
  // nos indica que es un decorador de un metodo definiendo una clase heredada 
  State<MyHomePage> createState() => _MyHomePageState();
}
// State<MyHomePage>: nos especifica que tipo de clase que es 
// createState() => _MyHomePageState(); en esta linea de codiga nos esta creando una estancia  y tambien nos devuelve una estancia 

class _MyHomePageState extends State<MyHomePage> {
  // se esta definiendo un contructor del cual es una constante MyHomePageState 
  int _counter = 0;
  // se esta estableciedno una variable de tiene un valor entero y empezara desde el numero;0

  void _incrementCounter() {
    //se esta ejecutando un nuevo proceso del cual se esta creando en privado 
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      //se esta estableciendo una incrementacion de uno en uno
    });
  }

  @override
    // nos indica que es un decorador de un metodo definiendo una clase heredada 
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      //se esta estableciendo el usuario 
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          // se esta centrado el texto 
          children: <Widget>[
            // se esta estableciendo una lista de la cual se derivan los hijos de widget 
            const Text(
              // esta definiendo un valor fijo que se le da al momento de ejecutarlo no altere el porgrama 
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        //se esta estableciendo un contador desendente 
        onPressed: _incrementCounter,
        // se esta estableciedno un boton flotante 
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
