import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let oddOrEvenController = window?.rootViewController as! OddOrEvenViewController
        RootWireframe().configure(oddOrEvenViewController: oddOrEvenController)
        
        return true
    }

}

