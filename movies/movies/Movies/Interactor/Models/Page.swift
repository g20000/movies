//
//  Page.swift
//  storemed
//
//  Created by pragmus on 05/08/2019.
//  Copyright © 2019 pragmus. All rights reserved.
//

import UIKit

class Page: NSObject, Codable, Copying {
    
    var page: Int?
    var items: Array<MedicalSupply>?
    var lastPage: Int?
    var amountOfItemsOnPage: Int?
    var amountOfItems: Int?
    
    enum CodingKeys: String, CodingKey {
        case page = "current_page"
        case items = "items"
        case lastPage = "last_page"
        case amountOfItemsOnPage = "per_page"
        case amountOfItems = "total"
    }
    
    required init(original: Page) {
        page = original.page
        items = original.items?.clone()
        lastPage = original.lastPage
        amountOfItemsOnPage = original.amountOfItemsOnPage
        amountOfItems = original.amountOfItems
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Page(original: self)
        return copy
    }
    
}
