import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ovqatlar Menyusi"),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/cola.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color: Colors.black.withOpacity(0.4),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Ichimliklar",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
