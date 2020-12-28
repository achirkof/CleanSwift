//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ 
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {

    // MARK: Tests

    func test_PresentSomething() {
        // Given
        let sut = makeSUT()
        let spyViewController = ___VARIABLE_sceneName___ViewControllerSpy()
        sut.viewController = spyViewController

        // When
        let response = ___VARIABLE_sceneName___.Something.Response()
        sut.presentSomething(response: response)

        // Then
        XCTAssertTrue(
            spyViewController.displaySomethingCalled,
            "presentSomething(response:) should ask the view controller to display the result"
        )
    }

    // MARK: Helpers

    func makeSUT(
        _ viewController: ___VARIABLE_sceneName___DisplayLogic = ___VARIABLE_sceneName___ViewControllerSpy()
    ) -> ___VARIABLE_sceneName___Presenter {
        let sut = ___VARIABLE_sceneName___Presenter()
        sut.viewController = viewController
        return sut
    }
}

// MARK: Test doubles

class ___VARIABLE_sceneName___ViewControllerSpy: ___VARIABLE_sceneName___DisplayLogic {
    var displaySomethingCalled = false

    func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel) {
        displaySomethingCalled = true
    }
}
