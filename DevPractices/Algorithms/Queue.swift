//
//  Queue.swift
//  DevPractices
//
//  Created by Tony Mu on 2018/5/2.
//  Copyright © 2018 Tony Mu. All rights reserved.
//

import UIKit

// A queue gives you a FIFO or first-in, first-out order. The element you inserted first is the first one to come out. It is only fair!
public struct Queue<T> {

  fileprivate var array = [T]()
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var count: Int {
    return array.count
  }
  
  public mutating func enqueue(_ element: T) {
    array.append(element)
  }
  
  public mutating func dequeue() ->T? {
    guard !isEmpty else {
      return nil
    }
    
    return array.removeFirst()
  }
  
  public var font: T? {
    return array.first
  }
}
