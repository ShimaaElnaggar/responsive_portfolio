import 'package:flutter/material.dart';
import 'package:responsive_portfolio/utils/colors_utility.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        buildKnowledgeText(knowledge: 'Flutter, Dart'),
        buildKnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }

  Padding buildKnowledgeText({required String knowledge}) {
    return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
      children: [
        const Icon(Icons.check,color: Colors.yellow,),
        const SizedBox(
          width: 10,
        ),
        Text(knowledge,style: const TextStyle(color: ColorsUtility.bodyTextColor),),
      ],
    ),
  );
  }
}
