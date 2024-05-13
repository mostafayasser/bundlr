import 'package:firebase_analytics/firebase_analytics.dart';

class FBAnalytics {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);
  logOpenPodcastEvent({required String podID, required String podName}) async {
    await analytics.logEvent(name: "Open_Podcast", parameters: {
      "podID": podID,
      "podName": podName,
    });
  }

  logOpenNewsletterEvent(
      {required String newsID, required String newsName}) async {
    await analytics.logEvent(name: "Open_Newsletter", parameters: {
      "newsID": newsID,
      "newsName": newsName,
    });
  }
}
