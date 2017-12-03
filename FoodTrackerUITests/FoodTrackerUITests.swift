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
        app/*@START_MENU_TOKEN@*/.buttons["Sign Up"]/*[[".segmentedControls.buttons[\"Sign Up\"]",".buttons[\"Sign Up\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let element = app.otherElements.containing(.staticText, identifier:"Create an account. Thank You!").children(matching: .other).element(boundBy: 0)
        let textField = element.children(matching: .other).element(boundBy: 0).children(matching: .textField).element
        textField.tap()
        textField.typeText("zh_ng123@yahoo.com")
        
        let secureTextField = element.children(matching: .other).element(boundBy: 1).children(matching: .secureTextField).element
        secureTextField.tap()
        secureTextField.typeText("test123")
        element.children(matching: .button)["Sign Up"].tap()
        
        let element2 = app.otherElements.containing(.staticText, identifier:"Try Again.").children(matching: .other).element(boundBy: 0)
        let textField2 = element2.children(matching: .other).element(boundBy: 0).children(matching: .textField).element
        textField2.tap()
        textField2.typeText("cxx@fdsfsfds.cdf")
        element2.children(matching: .button)["Sign Up"].tap()
       
    }
    
    
}
