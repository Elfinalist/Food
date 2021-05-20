//
//  africanFoods.swift
//  African foods
//
//  Created by ELVIS WANJOHI on 19/05/2021.
//

import Foundation


class africanDishes {

    //properties
    var type: String
    var time: Int
    var feeds: Int


    //Types
    struct PropertyKey {
        static let type = "type"
        static let time = "time"
        static let feeds = "feeds"
    }

    //Initialization
    init?(type: String, time: Int, feeds: Int) {


    //The type must not be empty
    guard !type.isEmpty else {
        return nil
        }

    //Initialize stored properties.
        self.type = type
        self.time = time
        self.feeds = feeds
    }

}
