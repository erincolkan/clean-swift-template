//  ___FILEHEADER___

import UIKit

fileprivate typealias Models = ___VARIABLE_sceneName___Models

protocol ___VARIABLE_sceneName___DisplayLogic: AnyObject {
    
}

final class ___VARIABLE_sceneName___Controller: UIViewController, ___VARIABLE_sceneName___DisplayLogic {
    
    typealias Router = (___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)
    
    // MARK: UI Elements
    
    // MARK: Properties
    
    // MARK: Dependencies
    private let router: Router
    private let interactor: ___VARIABLE_sceneName___BusinessLogic

    // MARK: Initializers
    init(interactor: ___VARIABLE_sceneName___BusinessLogic, router: Router) {
        self.interactor = interactor
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        layout()
    }

    // MARK: Setup
    private func setup() {
        
    }
    
    private func layout() {
        
    }
    
    // MARK: Display Logic
    
}
