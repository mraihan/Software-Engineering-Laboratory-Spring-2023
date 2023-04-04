import 'package:farmer/consts/consts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class WhetherScreen extends StatelessWidget {
  const WhetherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whether Update '),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        child: Link(
            uri: Uri.parse(
                'https://www.accuweather.com/en/bd/khulna/29075/weather-forecast/29075'),
              target: LinkTarget.self,
            builder: (context, followLink) {
              return ElevatedButton(
                onPressed: followLink,
                child: Text(
                  "Whether Update",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }),
      ).box.color(Color.fromARGB(164, 127, 7, 143)).make(),
    );
  }
}
