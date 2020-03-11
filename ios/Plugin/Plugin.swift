import Foundation
import Capacitor
import Firebase

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(InAppMessage)
public class InAppMessage: CAPPlugin {
    
    public override func load() {
        if (FirebaseApp.app() == nil) {
            FirebaseApp.configure();
        }
    }
    
    @objc func triggerEvent(_ call: CAPPluginCall) {
        if let value = call.getString("event") {
            InAppMessaging.inAppMessaging().triggerEvent(value)
            call.success()
        } else {
            call.error("Missing parameter: event")
        }
    }
}
