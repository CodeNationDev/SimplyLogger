//
import Foundation
import os.log



public struct SimplyLogger {
    public enum LogCategory: String {
        case success = "✅✅"
        case info = "ℹ️ℹ️"
        case warning = "⚠️⚠️"
        case error = "🧨🧨"
        case viewcycle = "📱📱"
        case data = "🗄🗄"
        case service = "📬📬"
        case trace = "🔸🔸"
    }
    
    public static func log(str: String, appName: String? = nil, identity: String? = nil, logToSystem: Bool? = false, category: LogCategory, type: OSLogType? = .debug, log: OSLog? = .default) {
        if logToSystem! {
            print("******[\(appName?.uppercased() ?? "")  \(identity?.uppercased() ?? "")]******")
            os_log("%@", log: log ?? .default, type: type ?? .info, "\(category.rawValue) \(str)")
            print("*********---[END]---***********")
            
        } else {
            print("******[\(appName?.uppercased() ?? "")  \(identity?.uppercased() ?? "")]******")
            print("\(category.rawValue) [\(Date().localDate())] -- \(str) \(category.rawValue)")
            print("*********---[END]---***********")
        }
    }

    @available(*, deprecated, message: "Use log function with trace category. This function will be removed in the next release (0.0.8)")
    public static func trace(str: String) {
        print("\(LogCategory.trace.rawValue) \(str)")
    }
}
