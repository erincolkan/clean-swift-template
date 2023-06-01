//  ___FILEHEADER___

import Foundation

fileprivate typealias Models = ___VARIABLE_sceneName___Models

protocol ___VARIABLE_sceneName___BusinessLogic {
    
}

protocol ___VARIABLE_sceneName___DataStore {
    
}

final class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {
    // MARK: Properties
    
    // MARK: Dependencies
    private let worker: ___VARIABLE_sceneName___Worker
    private let presenter: ___VARIABLE_sceneName___PresentationLogic
    
    // MARK: Initializers
    init(presenter: ___VARIABLE_sceneName___PresentationLogic, worker: ___VARIABLE_sceneName___Worker) {
        self.presenter = presenter
        self.worker = worker
    }
    
    // MARK: Business Logic
}
