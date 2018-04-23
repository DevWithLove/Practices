//
//  MergeSort.swift
//  DevPractices
//
//  Created by Tony Mu on 2018/4/23.
//  Copyright © 2018 Tony Mu. All rights reserved.
//

import UIKit


/*
 https://www.raywenderlich.com/154256/swift-algorithm-club-swift-merge-sort
 */

final class MergeSort {

  static func sort(_ array: [Int]) -> [Int] {
    
    guard array.count > 1 else {
      return array
    }
    
    let middleIndex = array.count / 2
    let leftArray = sort(Array(array[0..<middleIndex]))
    let rightArray = sort(Array(array[middleIndex..<array.count]))
    return merge(leftPile: leftArray, rightPile: rightArray)
  }
  
  
   static private func merge(leftPile: [Int], rightPile:[Int]) ->[Int] {
    // 1
    var leftIndex = 0
    var rightIndex = 0
    
    // 2
    var orderedPile = [Int]()
    
    // 3
    while leftIndex < leftPile.count && rightIndex < rightPile.count {
      if leftPile[leftIndex] < rightPile[rightIndex] {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
      } else if leftPile[leftIndex] > rightPile[rightIndex] {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
      } else {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
      }
    }
    
    // 4
    while leftIndex < leftPile.count {
      orderedPile.append(leftPile[leftIndex])
      leftIndex += 1
    }
    
    while rightIndex < rightPile.count {
      orderedPile.append(rightPile[rightIndex])
      rightIndex += 1
    }
    
    return orderedPile
  }
  
  
}
