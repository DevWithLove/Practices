//
//  Stack.swift
//  DevPractices
//
//  Created by Tony Mu on 2018/5/2.
//  Copyright © 2018 Tony Mu. All rights reserved.
//

import UIKit

//A stack gives you a LIFO or last-in first-out order.
public struct Stack<T> {

  fileprivate var array = [T]()
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var count: Int {
    return array.count
  }
  
  public mutating func push(item: T) {
    array.append(item)
  }
  
  public mutating func pop()->T? {
    return array.popLast()
  }
  
  
  public var top: T? {
    return array.last
  }
  
}
