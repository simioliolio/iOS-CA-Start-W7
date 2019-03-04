//
//  ThingsNearbyTests.swift
//  ThingsNearbyTests
//
//  Created by Simon Haycock on 2/5/19.
//  Copyright © 2019 Expedia. All rights reserved.
//

import XCTest
@testable import ThingsNearby

class ThingsNearbyTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_pagesInTitleOrder_pagesAreSortedCorrectly() {
//        let eiffelTower = Page(pageid: 1, title: "The Eiffel Tower", thumbnail: nil)
        let eiffelTower = Page(pageid: 1, title: "The Eiffel Tower", thumbnail: nil, original: nil, coordinates: [], terms: nil, fullurl: "http://someurl")
        let londonBridge = Page(pageid: 2, title: "London Bridge", thumbnail: nil, original: nil, coordinates: [], terms: nil, fullurl: "http://someurl")
        let pages = Pages(pages: [eiffelTower, londonBridge])
        let sortedPages = pages.pagesInTitleOrder()
        XCTAssertEqual(sortedPages.pages[0].title, londonBridge.title, "pages not sorted correctly")
    }
    
    func test_decodePageJSON_decodeSuccessfully() {
        
        // There may not be data, so we can use 'if let' to make
        // a new variable, which unwraps the optional returned by
        // the 'data' method.
        if let jsonInput = PageResponse.json.data(using: .utf8) {
            
            // 'decode' is a throwing method, so needs to be handled in
            // some way. One way is to use a do-catch.
            do {
                let json = try JSONDecoder().decode(Page.self, from: jsonInput)
                print(json)
            } catch {
                XCTFail("something went wrong. error: \(error)")
            }
            
        } else {
            XCTFail("couldn't get data from string")
        }
    }
    
    func test_decodePagesJSON_decodeSuccessfully() {
        
        // Another way of expressing the above is with a guard.
        // It tests for the condition you want, and handles the else
        // first, forcing you to return.
        guard let jsonInput = PagesResponse.json.data(using: .utf8) else {
            XCTFail("cannot get data from json response string")
            return
        }
        
        // Instead of a do catch to handle the throwing 'decode' function, we can
        // use try? to make the output of the throwing function an optional. This
        // is less verbose, but if we are not worried about the error, it makes for
        // less code that's easier to read
        guard let _ = try? JSONDecoder().decode(Pages.self, from: jsonInput) else {
            XCTFail("Could not decode json")
            return
        }
        
        // We can use _ above, which implies that we are not interested in the output,
        // we just want to make sure the decode is possible.
        
        // Test passes, nothing left to assert!
    }
    
    func test_decodeWholeJSON_decodeSuccessfully() {
        
        guard let jsonInput = GeoQueryResponse.json.data(using: .utf8) else {
            XCTFail("cannot get data from response string")
            return
        }
        
        guard let _ = try? JSONDecoder().decode(GeoQuery.self, from: jsonInput) else {
            XCTFail("Could not decode json")
            return
        }
    }

}
