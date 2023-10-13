//
//  CalculatorTests.swift
//  CICDDemoTests
//
//  Created by Anup D'Souza on 12/10/23.
//

import XCTest
@testable import CICDDemo

final class CalculatorTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            _ = Calculator().performOperation("30", "40", operation: .add)
        }
    }
    
    func testAddition() {
        let calculator = Calculator()
        XCTAssertTrue(calculator.performOperation("5", "10", operation: .add) == 15)
        XCTAssertFalse(calculator.performOperation("5", "10", operation: .add) == 200)
        XCTAssertEqual(calculator.performOperation("5", "10", operation: .add), 15)
        XCTAssertNotEqual(calculator.performOperation("5", "10", operation: .add), 20)
    }
    
    func testSubtraction() {
        XCTAssertEqual(Calculator().performOperation("40", "30", operation: .subtract), 10)
    }
    
    func testDivision() {
        XCTAssertEqual(Calculator().performOperation("120", "60", operation: .divide), 2)
    }
    
    func testMultiplication() {
        XCTAssertEqual(Calculator().performOperation("80", "40", operation: .multiply), 3200)
    }

    func testInvalidInput() {
        XCTAssertEqual(Calculator().performOperation("abc", "", operation: .multiply), 0)
    }
}
