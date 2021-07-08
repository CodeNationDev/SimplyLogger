
╔═══╗──────╔╗────╔╗
║╔═╗║──────║║────║║
║╚══╦╦╗╔╦══╣║╔╗─╔╣║──╔══╦══╦══╦══╦═╗
╚══╗╠╣╚╝║╔╗║║║║─║║║─╔╣╔╗║╔╗║╔╗║║═╣╔╝
║╚═╝║║║║║╚╝║╚╣╚═╝║╚═╝║╚╝║╚╝║╚╝║║═╣║
╚═══╩╩╩╩╣╔═╩═╩═╗╔╩═══╩══╩═╗╠═╗╠══╩╝
────────║║───╔═╝║───────╔═╝╠═╝║
────────╚╝───╚══╝───────╚══╩══╝
> A simple logger for Swift.

## Installation
Use Swift Package Manager to add this package to your project.

## Definition & Interface
```swift
public static func log(str: String, 
                   appName: String? = nil, 
                   identity: String? = nil, 
                   logToSystem: Bool? = false, 
                   category: LogCategory, 
                   type: OSLogType? = .debug, 
                   log: OSLog? = .default)
```
- **str (String):** logging message
- **appName (String):** app name to show at log header.
- **identity (String):** name of log.
- **logToSystem (Bool):** parameter for write log in system log console or not. Default is FALSE.
- **category (enum):** the log category options:
    ```swift 
    public enum LogCategory: String {
        case info = "✅✅"
        case warning = "⚠️⚠️"
        case error = "🧨🧨"
        case viewcycle = "📱📱"
        case data = "🗄🗄"
        case service = "📬📬"
        case trace = "ℹ️ℹ️"
    }
    ```

- **type (OSLogType):** type of OSLog for system console.
- **log (OSLog):** the log write.

## Usage example
### Custom Log
```swift
//
import UIKit
import os.log

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SimplyLogger.log(str: "Testing logging", logToSystem: true, category: .error, type: .error)
    }
}
```
### Logging traces
```swift
//
import UIKit
import os.log

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SimplyLogger.trace(str: "view did loaded")
    }
}
```
Also, you can do a complex trace using custom log with "trace" category.
```swift 
 SimplyLogger.log(str: "Testing logging", logToSystem: true, category: .trace, type: .debug)
```

## Meta

David Martin Saiz – [@deividmarshall](https://twitter.com/deividmarshall) – davms81@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/CodeNationDev/](https://github.com/CodeNationDev)

## Version History
* 0.0.7
  * Update log function and prints.
  * Deprecate trace function.
* 0.0.6
  * Add compatibility with watchOS, macOS and tvOS.
* 0.0.5
  * Set Swift minumim version to 5.0.
* 0.0.4
  * Add date time to log trace.
* 0.0.3
  * Adjust iOS version to 11.
* 0.0.2
  * Add Swift Package Manager Support.
* 0.0.1
    * First implementation with main features.
