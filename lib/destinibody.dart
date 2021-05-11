import 'package:flutter/material.dart';
import './storybrain.dart';

StoryBrain story = StoryBrain();

class DestiniBody extends StatefulWidget {
  @override
  _DestiniBodyState createState() => _DestiniBodyState();
}

class _DestiniBodyState extends State<DestiniBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  story.getStory(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                child: Text(
                  story.getChoice1(),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    print(story.storynumber);
                    story.nextStory(1);
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: story.buttonshouldvisible(),
                child: ElevatedButton(
                  child: Text(
                    story.getChoice2(),
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      story.nextStory(2);
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
