import Foundation
import Capacitor
import CoreMotion

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(MotionPluginPlugin)
public class MotionPluginPlugin: CAPPlugin {
    private let implementation = MotionPlugin()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func startMotionActivityUpdates(_ call: CAPPluginCall) {
    if CMMotionActivityManager.isActivityAvailable() {
        motionActivityManager.startActivityUpdates(to: OperationQueue.main) { (activity) in
            // Process the activity data here
            // Send data back to JavaScript through a bridge
            call.resolve([
                "value": activity
            ])
        }
        call.resolve()
        } else {
            call.reject("Motion activity not available")
        }
    }

}
