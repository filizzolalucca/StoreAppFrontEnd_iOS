//
//  NSObject.swift
//  StoreApp
//
//  Created by Lucca Filizzola on 18/05/22.
//

import Foundation
extension NSObject {
  static var className: String {
    return String(describing: self)
  }
  
  func propertyNames() -> [String] {
    let mirror = Mirror(reflecting: self)
    return mirror.children.compactMap { $0.label }
  }
  
  func propertyValues() -> [String] {
    let mirror = Mirror(reflecting: self)
    let array = mirror.children.compactMap { $0.value }
    if let arrayString = array as? [String] {
      return arrayString
    } else {
      return []
    }
  }
  
}
