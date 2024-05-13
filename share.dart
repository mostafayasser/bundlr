import 'package:flutter/cupertino.dart';
import 'package:share_plus/share_plus.dart';

class ShareService {
  void shareData({BuildContext? context, String? message}) {
    final RenderBox? box = context!.findRenderObject() as RenderBox?;
    Share.share(message!,
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }
}
