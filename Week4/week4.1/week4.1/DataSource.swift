//
//  DataSource.swift
//  Week4.1
//
//  Created by 1 on 2023/9/20.
//

import UIKit

struct DataSource {
    let content: String
    
    init(section: Int, row: Int) {
        self.content = "This is section \(section), row \(row)"
    }
}
