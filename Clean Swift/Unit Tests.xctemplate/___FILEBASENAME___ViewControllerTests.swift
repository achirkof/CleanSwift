//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ 
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {

    // MARK: Tests

    func test_shouldDoSomething_whenViewIsLoaded() {
        // Given
        let interactorSpy = ___VARIABLE_sceneName___InteractorSpy()
        let sut = makeSUT()
        sut.interactor = interactorSpy

        // When
        sut.loadViewIfNeeded()

        // Then
        XCTAssertTrue(spy.doSomethingCalled, "viewDidLoad() should ask the interactor to do something")
    }

    func test_someMethod_shouldDisplaySomething_whenGetSomething() {
        // Given
        let viewModel = ___VARIABLE_sceneName___.Something.ViewModel()

        // When
        sut.loadViewIfNeeded()
        sut.displaySomething(viewModel: viewModel)

        // Then
        // XCTAssertEqual(sut.nameTextField.text, "", "displaySomething(viewModel:) should update the name text field")
    }

    // MARK: Helpers

    func makeSUT(
        _ interactor: ___VARIABLE_sceneName___BusinessLogic = ___VARIABLE_sceneName___InteractorSpy(),
        _ router: ___VARIABLE_sceneName___RoutingLogic = ___VARIABLE_sceneName___RouterSpy()
    ) -> ___VARIABLE_sceneName___ViewController {
        sut = ___VARIABLE_sceneName___ViewController()
        sut.interactor = interactor
        sut.router = router
        return sut
    }
}

// MARK: Test doubles

class ___VARIABLE_sceneName___InteractorSpy: ___VARIABLE_sceneName___BusinessLogic {
    var doSomethingCalled = false

    func doSomething(request _: ___VARIABLE_sceneName___.Something.Request) {
        doSomethingCalled = true
    }
}

class ___VARIABLE_sceneName___RouterSpy: NSObject, ___VARIABLE_sceneName___RoutingLogic {
    var dataStore: ___VARIABLE_sceneName___DataStore?

    var routeToSomethingCalled = false

    func routeToSomething() {
        self.routeToWelcomeCalled = true
    }
}
