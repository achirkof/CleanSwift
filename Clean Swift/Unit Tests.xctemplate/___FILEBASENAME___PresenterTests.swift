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
    // MARK: Subject under test

    var sut: ___VARIABLE_sceneName___Presenter!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Presenter()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Test setup

    func setup___VARIABLE_sceneName___Presenter() {
        sut = ___VARIABLE_sceneName___Presenter()
    }

    // MARK: Tests

    func test_PresentSomething() {
        // Given
        let spy = ___VARIABLE_sceneName___DisplayLogicSpy()
        sut.viewController = spy
        let response = ___VARIABLE_sceneName___.Something.Response()

        // When
        sut.presentSomething(response: response)

        // Then
        XCTAssertTrue(spy.displaySomethingCalled, "presentSomething(response:) should ask the view controller to display the result")
    }
}

// MARK: Test doubles

class ___VARIABLE_sceneName___DisplayLogicSpy: ___VARIABLE_sceneName___DisplayLogic {
    var displaySomethingCalled = false

    func displaySomething(viewModel _: ___VARIABLE_sceneName___.Something.ViewModel) {
        displaySomethingCalled = true
    }
}
