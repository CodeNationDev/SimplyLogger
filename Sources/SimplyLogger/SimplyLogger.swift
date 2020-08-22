//
import Foundation
import os.log



public struct SimplyLogger {
    public enum LogCategory: String {
        case info = "✅"
        case warning = "⚠️"
        case error = "🧨"
        case viewcycle = "📱"
        case data = "🗄"
        case service = "📬"
        case trace = "ℹ️"
    }
    
    public static func log(str: String, logToSystem: Bool? = false, category: LogCategory, type: OSLogType? = .debug, log: OSLog? = .default) {
        if logToSystem! {
            os_log("%@", log: log ?? .default, type: .info, "\(category.rawValue) \(str)")
        }
        print("[\(Date().localDate())]\(category.rawValue) \(str)")
    }
   
    public static func trace(str: String) {
        print("\(LogCategory.trace.rawValue) \(str)")
    }
}
