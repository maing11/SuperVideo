//
//  ReusableView.swift
//  Youtube Challenge
//
//  Created by Mai Nguyen on 5/6/18.
//  Copyright © 2018 AppArt. All rights reserved.
//

import UIKit

protocol ReusableView: class{
    static var reuseIdentifier: String { get }
}

extension ReusableView where Self: UIView{
    static var reuseIdentifier: String{
        return NSStringFromClass(self)
    }
}
