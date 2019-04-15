//
//  EmptySearchView.swift
//  Youtube Challenge
//
//  Created by Mai Nguyen on 5/6/18.
//  Copyright © 2018 AppArt. All rights reserved.
//

import UIKit

class EmptySearchView: UIView {

  // MARK: - Properties
  @IBOutlet weak var textLabel: UILabel!
  @IBOutlet weak var imageView: UIImageView!
  
  // MARK: - Life cycle
  override func awakeFromNib() {
    backgroundColor = UIColor.searchBackgroundColor
    textLabel.textColor = .white
    textLabel.text = "Search"
    imageView.backgroundColor = .clear
  }
  
  class func set(text: String) -> EmptySearchView {
    let view =  EmptySearchView.fromNib() as EmptySearchView
    view.textLabel.text = text
    return view
  }
}

extension EmptySearchView: NibLoadableView { }
