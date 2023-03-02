import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';

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
      backgroundColor: ColorConst.navBarBg,
      contentPadding: const EdgeInsets.all(0),
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.flag,
              size: 30,
            ),
          ),
          Text(
            "report",
            style: GoogleFonts.arimo(
                color: ColorConst.homeContainerBg,
                fontSize: 25,
                fontWeight: FontWeight.w800),
          ).tr(),
        ],
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
            child: CheckboxListTile(
              title: Text('Uygunsuz İçerik',
                  style: GoogleFonts.arimo(
                      color: ColorConst.homeContainerBg,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
              value: inappropriateContent,
              onChanged: (value) {
                setState(() {
                  inappropriateContent = value!;
                });
              },
            ),
          ),
          SizedBox(
            height: 40,
            child: CheckboxListTile(
              title: Text('Spam',
                  style: GoogleFonts.arimo(
                      color: ColorConst.homeContainerBg,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
              value: spam,
              onChanged: (value) {
                setState(() {
                  spam = value!;
                });
              },
            ),
          ),
          SizedBox(
            height: 40,
            child: CheckboxListTile(
              title: Text('Kötüye Kullanım',
                  style: GoogleFonts.arimo(
                      color: ColorConst.homeContainerBg,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
              value: abuse,
              onChanged: (value) {
                setState(() {
                  abuse = value!;
                });
              },
            ),
          ),
        ],
      ),
      actions: <Widget>[
        Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(ColorConst.homeContainerBg),
            ),
            child: Text("Gönder",
                style: GoogleFonts.arimo(
                    color: ColorConst.navBarBg,
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
            onPressed: () {
              submitReport();
              context.pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Başarıyla Şikayet Edildi'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
