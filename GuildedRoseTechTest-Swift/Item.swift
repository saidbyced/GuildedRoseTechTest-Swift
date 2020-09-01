//
//  Item.swift
//  GuildedRoseTechTest-Swift
//
//  Created by Chris Eadie on 01/09/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

public class Item {
    public var name: String
    public var sellIn: Int
    public var quality: Int
    
    public init(name: String, sellIn: Int, quality: Int) {
        self.name = name
        self.sellIn = sellIn
        self.quality = quality
    }
}

extension Item: CustomStringConvertible {
    public var description: String {
        return self.name + ", " + String(self.sellIn) + ", " + String(self.quality);
    }
}
