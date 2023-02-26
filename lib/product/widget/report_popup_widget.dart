import 'package:flutter/material.dart';

class ReportPopup extends StatefulWidget {
  const ReportPopup({super.key});

  @override
  State<ReportPopup> createState() => _ReportPopupState();
}

class _ReportPopupState extends State<ReportPopup> {
  @override
  Widget build(BuildContext context) {
    bool inappropriateContent = false;
    bool spam = false;
    bool abuse = false;

    submitReport() {
      List<String> reasons = [];
      if (inappropriateContent) reasons.add('Uygunsuz İçerik');
      if (spam) reasons.add('Spam');
      if (abuse) reasons.add('Kötüye Kullanım');
    }

    return AlertDialog(
      title: const Text("Rapor Et"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CheckboxListTile(
            title: const Text('Uygunsuz İçerik'),
            value: inappropriateContent,
            onChanged: (value) {
              setState(() {
                inappropriateContent = value!;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Spam'),
            value: spam,
            onChanged: (value) {
              setState(() {
                spam = value!;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Kötüye Kullanım'),
            value: abuse,
            onChanged: (value) {
              setState(() {
                abuse = value!;
              });
            },
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text("İptal"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text("Gönder"),
          onPressed: () {
            submitReport();
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Başarıyla Şikayet Edildi'),
              ),
            );
          },
        ),
      ],
    );
  }
}
