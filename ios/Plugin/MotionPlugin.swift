import Foundation
import CoreMotion

@objc public class MotionPlugin: NSObject {
    let motionActivityManager = CMMotionActivityManager()
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
