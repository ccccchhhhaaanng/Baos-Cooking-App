/*
  Baus_CookingTest.swift
  Baus CookingTest
  Description: this file contains all the tests based on the scenarios.
  Created by Group7 on 12/2/15.
*/

import XCTest

class Baus_CookingTest: XCTestCase {
        
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
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
      
      /* Checking the log in page. Check if the user name that the customer typed in is received*/
      let app = XCUIApplication()
      let userTextField = app.textFields["User"]
      userTextField.tap()
      userTextField.typeText("Runping")
      
      /* Test if the passwords that the customer entered is received and if the log in buttom is working*/
      let passwordSecureTextField = app.secureTextFields["Password"]
      passwordSecureTextField.tap()
      passwordSecureTextField.typeText("wying123")
      app.buttons["Log In"].tap()
      
      /* Check the searching page. Check if the ingredients that the customer entered can be received by the app. And check if
         the submit buttom is working*/
      let typeInAnIngredientTextField = app.textFields["Type in an ingredient"]
      typeInAnIngredientTextField.tap()
      typeInAnIngredientTextField.typeText("soup")
      app.buttons["Submit"].tap()
      
      /* Check if the ingredients that the app displayed can be clicked and if there is anything showed up after the customer
         clicked the recipe.*/
      let collectionViewsQuery = app.collectionViews
      collectionViewsQuery.childrenMatchingType(.Cell).elementBoundByIndex(7).childrenMatchingType(.Image).element.swipeUp()
      collectionViewsQuery.childrenMatchingType(.Cell).elementBoundByIndex(10).childrenMatchingType(.Image).element.swipeUp()
      
      /* check if the buttom that navigated from the searching result back to the searching page is working or not.*/
      app.navigationBars["Recipes"].buttons["Baus"].tap()
      
      /* check if the log out buttom is working or not*/
      app.navigationBars["Baus"].buttons["Log Out"].tap()
      
    }
    
}
