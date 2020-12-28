//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ 
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___InteractorTests: XCTestCase {

    // MARK: Tests

    func test_someWorkRun_shouldDoSomething() {
        // Given
        let sut = makeSUT()
        let workerSpy = ___VARIABLE_sceneName___WorkerSpy()
        let presenterSpy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.worker = workerSpy
        sut.presenter = presenterSpy

        // When
        let request = ___VARIABLE_sceneName___.Something.Request()
        sut.doSomething(request: request)

        // Then
        XCTAssertTrue(
            workerSpy.someWorkRunCalled,
            "should ask the Worker to make some work"
        )
    }

    // MARK: Helpers

    func makeSUT(
        _ presenter: ___VARIABLE_sceneName___PresentationLogic = ___VARIABLE_sceneName___PresenterSpy(),
        _ worker: ___VARIABLE_sceneName___WorkerLogic = ___VARIABLE_sceneName___WorkerSpy()
    ) -> ___VARIABLE_sceneName___Interactor {
        let sut = ___VARIABLE_sceneName___Interactor()
        sut.presenter = presenter
        sut.worker = worker
        return sut
    }
}

// MARK: Test doubles

class ___VARIABLE_sceneName___PresenterSpy: ___VARIABLE_sceneName___PresentationLogic {
    var presentSomethingCalled = false

    func presentSomething(response _: ___VARIABLE_sceneName___.Something.Response) {
        presentSomethingCalled = true
    }
}

class ___VARIABLE_sceneName___WorkerSpy: ___VARIABLE_sceneName___WorkerLogic {
    var someWorkRunCalled = false

    func someWorkRun() {
        self.someWorkRunCalled = true
    }
}
