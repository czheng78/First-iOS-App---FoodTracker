//
//  FoodTrackerUITests.swift
//  FoodTrackerUITests
//
//  Created by Tommy Zheng on 12/2/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import XCTest

class FoodTrackerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        let element = app.otherElements.containing(.staticText, identifier:"Please enter your Email and Password.").children(matching: .other).element(boundBy: 0)
        let textField = element.children(matching: .other).element(boundBy: 0).children(matching: .textField).element
        textField.tap()
        textField.typeText("zh_ng123@yahoo.com")
        
        let secureTextField = element.children(matching: .other).element(boundBy: 1).children(matching: .secureTextField).element
        secureTextField.tap()
        secureTextField.typeText("test123456")
        element.children(matching: .button)["Sign In"].tap()
        
        let element2 = app.otherElements.containing(.staticText, identifier:"Try Again.").children(matching: .other).element(boundBy: 0)
        let secureTextField2 = element2.children(matching: .other).element(boundBy: 1).children(matching: .secureTextField).element
        secureTextField2.swipeLeft()
        secureTextField2.tap()
        secureTextField2.typeText("test123")
        element2.children(matching: .button)["Sign In"].tap()
        app.navigationBars["Your Meals"].buttons["Add"].tap()
       
    }
    
    
}
