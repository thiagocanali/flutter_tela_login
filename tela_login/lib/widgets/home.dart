import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

/**
 *MyMethod
 **Important information is highlighted
 *!Deprecated method,do not use
 *?Should this method be exposed in the public API?
 *TODO:refactor this method so that it conforms to the API
  @param myParam The parameter for this method

**/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text('Text Center'),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).colorScheme.primary,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () => {
                    print('botão HOME pressionado!'),
                    Navigator.pushNamed(context, '/home')
                  },
                ),
                IconButton(
                  icon: Icon(Icons.list),
                  onPressed: () => {
                    print('botão LIST pressionado!'),
                    Navigator.pushNamed(context, '/itens')
                  },
                ),
                SizedBox(
                  width: 24,
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () => {
                    print('botão PROFILE pressionado!'),
                    Navigator.pushNamed(context, '/profile')
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () => {
                    print('botão SETTINGS pressionado!'),
                    Navigator.pushNamed(context, '/configs')
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
