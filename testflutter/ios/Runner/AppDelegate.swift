import UIKit
import Firebase
import FirebaseMessaging
import FirebaseAnalytics

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions
      launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {
    // 1
    FirebaseApp.configure()
    // 2
    FirebaseConfiguration.shared.setLoggerLevel(.min)
    return true
  }
}
