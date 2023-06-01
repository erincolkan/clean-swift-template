//  ___FILEHEADER___

import UIKit

protocol ___VARIABLE_sceneName___RoutingLogic {
    
}

protocol ___VARIABLE_sceneName___DataPassing {
    var dataStore: ___VARIABLE_sceneName___DataStore? { get }
}

final class ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___RoutingLogic, ___VARIABLE_sceneName___DataPassing {
    // MARK: Properties
    weak var controller: ___VARIABLE_sceneName___Controller?
    var dataStore: ___VARIABLE_sceneName___DataStore?

    // MARK: Routing Logic
    
}
