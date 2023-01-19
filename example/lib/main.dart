import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text =
        'गुळातील गोडवा ओठावर येऊ द्या..\nमनातील कडवटपणा बाहेर पडू द्या..\nया संक्रांतीला तीळगुळ खाताना आमची आठवण राहू द्या...!\nउत्कर्षाचे अत्तर सुगंधी चोहिकडे शिंपावे..!!\nसुखाचे मंगल क्षण आपणांस लाभावे..!!\nश्री लक्ष्मी-नारायण घरी तुमच्या यावे..!!\nशुभेच्छांने अवघे अंगण तुमचे भरावे...!!\nदुःख असावे तिळासारखे,\nआनंद असावा गुळासारखा,\nजीवन असावे तिळगुळासारखे.';
    return new MaterialApp(
      //set global text scale factor in builder
      builder: (BuildContext context, Widget child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaleFactor: 3),
          child: child,
        );
      },

      home: Scaffold(
        body: Center(
          child: SimpleRichText(
            text,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
