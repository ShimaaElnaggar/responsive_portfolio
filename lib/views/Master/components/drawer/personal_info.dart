import 'package:flutter/material.dart';
import 'package:responsive_portfolio/utils/colors_utility.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          buildHeaderInfo(
            header: 'Contact',
            data: '01112840356',
          ),
          const SizedBox(height: 5,),
          buildHeaderInfo(
            header: 'Email',
            data: 'shimaaibrahim072@gmail.com',
          ),

          const SizedBox(
            height: 20,
          ),
          const Text(
            'Skills',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Row buildHeaderInfo({
    String? header,
    String? data,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$header',
            style: const TextStyle(color: Colors.white),
          ),
          Text('$data',style: const TextStyle(color: ColorsUtility.bodyTextColor)),
        ],
      );
}
