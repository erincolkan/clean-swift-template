//  ___FILEHEADER___

import Foundation
import UIKit.UIViewController

enum ___VARIABLE_sceneName___Builder {
    static func build() -> UIViewController {
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()
        let worker = ___VARIABLE_sceneName___Service()
        let interactor = ___VARIABLE_sceneName___Interactor(presenter: presenter, worker: worker)
        let controller = ___VARIABLE_sceneName___ViewController(interactor: interactor, router: router)
        
        presenter.controller = controller
        router.controller = controller
        router.dataStore = interactor
        
        return controller
    }
}
