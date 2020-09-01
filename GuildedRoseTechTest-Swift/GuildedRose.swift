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
            if (item.name != "Aged Brie" && item.name != "Backstage passes to a TAFKAL80ETC concert") {
                if (item.quality > 0) {
                    if (item.name != "Sulfuras, Hand of Ragnaros") {
                        item.quality = item.quality - 1
                    }
                }
            } else {
                if (item.quality < 50) {
                    item.quality = item.quality + 1
                    
                    if (item.name == "Backstage passes to a TAFKAL80ETC concert") {
                        if (item.sellIn < 11) {
                            if (item.quality < 50) {
                                item.quality = item.quality + 1
                            }
                        }
                        
                        if (item.sellIn < 6) {
                            if (item.quality < 50) {
                                item.quality = item.quality + 1
                            }
                        }
                    }
                }
            }
            
            if (item.name != "Sulfuras, Hand of Ragnaros") {
                item.sellIn = item.sellIn - 1
            }
            
            if (item.sellIn < 0) {
                if (item.name != "Aged Brie") {
                    if (item.name != "Backstage passes to a TAFKAL80ETC concert") {
                        if (item.quality > 0) {
                            if (item.name != "Sulfuras, Hand of Ragnaros") {
                                item.quality = item.quality - 1
                            }
                        }
                    } else {
                        item.quality = item.quality - item.quality
                    }
                } else {
                    if (item.quality < 50) {
                        item.quality = item.quality + 1
                    }
                }
            }
        }
    }
    
//    public func updateQuality2() {
//        for item in items {
//            if item.quality != 0 && item.name != "Sulfuras, Hand of Ragnaros" {
//                switch item.name {
//                case "Aged Brie":
//                    if item.quality == 50 {
//                        return
//                    } else {
//                        item.quality += 1
//                    }
//                case "Backstage passes to a TAFKAL80ETC concert":
//                    if item.quality == 50 {
//                        return
//                    } else {
//                        switch item.sellIn {
//                        case 0:
//                            item.quality = 0
//                        case 1...5:
//                            item.quality += 3
//                        case 6...10:
//                            item.quality += 2
//                        default:
//                            item.quality += 1
//                        }
//                    }
//                default:
//                    var adjustment = 1
//
//                    if item.sellIn <= 0 {
//                        adjustment *= 2
//                    }
//
//                    if item.description.lowercased().contains("conjured") {
//                        adjustment *= 2
//                    }
//
//                    item.quality -= adjustment
//                }
//            }
//        }
//    }
}
