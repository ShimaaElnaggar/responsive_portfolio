import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse('https://wa.me/01112840356'));
        },
        borderRadius: BorderRadius.circular(30),
        child: Container(
            height: 60,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Colors.pink,
                  Colors.blue.shade900,
                ]),
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue, offset: Offset(0, -1), blurRadius: 5),
                  BoxShadow(
                      color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.greenAccent,
                  size: 15,
                ),
                const SizedBox(width: 5),
                Text(
                  'Whatsapp',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
  }
}
