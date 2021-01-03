//
//  Card.swift
//  Cooperation
//
//  Created by Susan Jensen on 12/9/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import Foundation

struct Card: CustomStringConvertible,Equatable{
    var description: String {
        var output = "color is \(col.rawValue),"
        output += " number is \(num.rawValue)"
        return output
    }
    var num: Num
    var col: Col
    
    init(){
        num = Card.Num.none
        col = Card.Col.none
    }
    
    init(num: Card.Num, col: Card.Col){
        self.num = num
        self.col = col
   }
    
    enum  Col: Int{
        case none = 0, red, blue, magenta, orange, purple
        static var all = [Col.red, Col.blue, Col.magenta, Col.orange, Col.purple]
    }
    
    enum Num: Int{
        case none = 0,one,two,three,four,five
        static var all = [Num.one,Num.two,Num.three,Num.four,Num.five]
    }
}