import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Color.fromARGB(255, 0, 255, 0),
      ),
      body: const Center(
        child: Text('Text Center'),
      ),
      extendBody: true,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      bottomNavigationBar: BottomAppBar(
        // shape: const CircularNotchedRectangle(),
        color: Color.fromARGB(255, 0, 255, 0),
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
                    Navigator.pushNamed(context, '/list')
                  },
                ),
                // SizedBox(
                //   width: 24,
                // ),
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
