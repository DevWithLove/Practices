//
//  DevPracticesTests.swift
//  DevPracticesTests
//
//  Created by Tony Mu on 2018/4/23.
//  Copyright © 2018 Tony Mu. All rights reserved.
//

import XCTest
@testable import DevPractices

class MergeSortTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSortInteger() {
      // Arrange
      let array = [2, 5, 3, 9, 7]
      
      // Act
      let result = MergeSort.sort(array)
      
      // Assert
      XCTAssertEqual(result.count, 5)
      XCTAssertEqual(result.first, 2)
      XCTAssertEqual(result.last, 9)
    }
  
    func testPerformance() {
      var data = [Int]()
      let sampleSize = 100000
      
      for item in 0..<sampleSize {
        data.append(item)
      }
      
      self.measure {
        _ = MergeSort.sort(data)
      }
    }
  
}

