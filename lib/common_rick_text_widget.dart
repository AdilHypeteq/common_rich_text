part of common_rich_text;

// ignore: must_be_immutable
class RichTextWidget extends StatelessWidget {
  String text;
  String requiredText;
  FontWeight fontWeight;
  RichTextWidget(
      {required this.text,
      required this.requiredText,
      required this.fontWeight,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: text,
          style: TextStyle(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black
                  : Colors.white,
              fontWeight: fontWeight,
              fontFamily: "Muli-Bold",
              fontSize: 15),
          children: [
            TextSpan(
                text: requiredText,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                  fontWeight: FontWeight.bold,
                ))
          ]),
    );
  }
}
