//
//  GuildedRose.swift
//  GuildedRoseTechTest-Swift
//
//  Created by Chris Eadie on 01/09/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

public class GildedRose {
    var items:[Item]
    
    public init(items:[Item]) {
        self.items = items
    }
    
    public func updateQuality() {
        for item in items {
            if item.name != "Sulfuras, Hand of Ragnaros" {
                switch item.name {
                case "Aged Brie":
                    if item.quality < 50 {
                        item.quality += 1
                    }
                case "Backstage passes to a TAFKAL80ETC concert":
                    if item.quality < 50 {
                        switch item.sellIn {
                        case 0:
                            item.quality = 0
                        case 1...5:
                            item.quality += 3
                        case 6...10:
                            item.quality += 2
                        default:
                            item.quality += 1
                        }
                        
                        if item.quality > 50 {
                            item.quality = 50
                        }
                    }
                default:
                    if item.quality != 0 {
                        var adjustment = 1

                        if item.sellIn <= 0 {
                            adjustment *= 2
                        }

                        if item.description.lowercased().contains("conjured") {
                            adjustment *= 2
                        }

                        if item.quality - adjustment < 0 {
                            item.quality = 0
                        } else {
                            item.quality -= adjustment
                        }
                    }
                }
            }
        }
    }
}
