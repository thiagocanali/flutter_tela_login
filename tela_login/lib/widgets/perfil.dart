import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Color.fromARGB(255, 189, 189, 21),
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
        color: Color.fromARGB(255, 189, 189, 21),
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
