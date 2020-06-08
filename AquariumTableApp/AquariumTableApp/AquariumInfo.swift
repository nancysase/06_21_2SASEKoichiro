//
//  AquariumInfo.swift
//  AquariumTableApp
//
//  Created by SASE Koichiro on 2020/06/08.
//  Copyright © 2020 SASE Koichiro. All rights reserved.
//

import Foundation

class AquariumInfo {
    let iconName: String
    let title: String
    let url: String
    init(iconName: String, title: String, url: String) {
        self.iconName = iconName
        self.title = title
        self.url = url
    }
}
