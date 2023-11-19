import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = makeViewController()
        window?.makeKeyAndVisible()

        return true
    }
    
    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .white
        return viewController
    }
}
