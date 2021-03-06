//
//  ContentDetaiModel.swift
//  Youtube Challenge
//
//  Created by Mai Nguyen on 5/6/18.
//  Copyright © 2018 AppArt. All rights reserved.
//

import ObjectMapper

class ContentDetaiModel {

  var duration: String?
  
  required convenience init?(map: Map) {
    self.init()
  }
}

extension ContentDetaiModel: Mappable {
 
  func mapping(map: Map) {
    duration <- (map["duration"], YTDuration())
  }
}
