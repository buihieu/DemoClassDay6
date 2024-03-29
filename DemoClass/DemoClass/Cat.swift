//
//  Cat.swift
//  DemoClass
//
//  Created by Trinh Minh Cuong on 10/2/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
class Cat: Animal {
    override func sound() -> String {
        return "Meo meo"
    }
}

class Dog: Animal {
    override func sound() -> String {
        return "Go go!"
    }
}

class Tiger: Animal {
    override func sound() -> String {
        return "Roar Roar!"
    }
}