//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ___VARIABLE_sceneName___BusinessLogic {
    func fetchFromDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromDataStore.Request)
    func ___VARIABLE_sceneName___(with request: ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___.Request)
}

protocol ___VARIABLE_sceneName___DataStore {
    var attribute: String? { get set }
}

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {
    var worker: ___VARIABLE_sceneName___Worker?
    var presenter: ___VARIABLE_sceneName___PresentationLogic?

    var attribute: String?

    // MARK: Use Case - Fetch Data From DataStore

    func fetchFromDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromDataStore.Request) {
        attribute = ""
        let response = ___VARIABLE_sceneName___Models.FetchFromDataStore.Response(userAttribute: attribute!)
        presenter?.presentFetchFromDataStoreResult(with: response)
    }

    // MARK: Use Case - ___VARIABLE_sceneName___

    func ___VARIABLE_sceneName___(with request: ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___.Request) {

        var isError = false
        var variablePassed = ___VARIABLE_sceneName___Models.VariablePassed()

        // MARK: Empty variablePassed Check

        if request.variableToPass == nil {
            isError = true
            variablePassed.errorMessage = "Some localised empty/nil error message string."
        }

        if isError {
            let response = ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___.Response(containsErrors: true, genericErrorMessage: nil, variablePassed: variablePassed)
            presenter?.present___VARIABLE_sceneName___Result(with: response)
            return
        }

        // MARK: Execute Use Case

        worker = ___VARIABLE_sceneName___Worker()
        worker?.___VARIABLE_sceneName___(completionHandler: { (isSuccessful, errorMessage) in
            if isSuccessful {
                self.attribute = request.variableToPass!

                let response = ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___.Response(containsErrors: false, genericErrorMessage: nil, variablePassed: variablePassed)
                self.presenter?.present___VARIABLE_sceneName___Result(with: response)
            }
            else {
                let response = ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___.Response(containsErrors: true, genericErrorMessage: errorMessage, variablePassed: variablePassed)
                self.presenter?.present___VARIABLE_sceneName___Result(with: response)
            }
        })
    }
}