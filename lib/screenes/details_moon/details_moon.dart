import 'package:flutter/material.dart';

class DetailsMoon extends StatelessWidget {
  const DetailsMoon({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
          title: Text(
              style: TextStyle(fontSize: 20, color: Colors.amber), "My Moon"),
          backgroundColor: Colors.deepPurple),
      backgroundColor: Colors.deepPurpleAccent,
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
              style: TextStyle(fontSize: 25),
              "لو أن الحب كلمات تكتب لانتهت أقلامي، لكن الحب أرواح توهب، فهل تكفيكِ روحي؟\nذلك الكائن العجيب في كل شيء، ساحرة، عذبة، غامضة، ماكرة، مرهفة، جميلة. عندما تحب  تحب بصوت عال، وتعبر عن حبها بالصورة والصوت، أما الرجل فيمتص حبه كما تمتص ورقة النشاف قطرة الحبر، ويتآكل قلبه تدريجيًا كما يتآكل محرك السيارة من داخله ."),
          Text(
              style: TextStyle(fontSize: 25),
              "الليل له نهاية، والعمرله نهاية، ولكن حبي لك ليس له نهاية.رسمت عينيكي على أوراقي بقلم الرصاص، رسمتهما بكل أشواقي، وبكلّ إخلاص، عيناك اللتان تخترقان صدري كالرصاص."),
          Text(
              style: TextStyle(fontSize: 25),
              "أحبك بقدر الحروف التي تسمى بها العاشقون، أحبك كلمة لا تعبر أبداً عما بداخلي، لكـن سأقولها لتصل لك حبيبي، قد الحروف أحبك.بعد رحيلك توقف كل شيء، أصبحت كل الأشياء، ليس لها معنى حتى حساب عمري لا معنى له.")
        ]),
      ),
    ));
  }
}
