//
//  videosRequests.swift
//  Youtube Challenge
//
//  Created by Mai Nguyen on 5/5/18.
//  Copyright © 2018 AppArt. All rights reserved.
//

enum VideosRequests: RequestProtocol {
  
  case videos(items: [ItemModel])
  
  var path: String {
    switch  self {
    case .videos(_):
      return "/youtube/v3/videos"
    }
  }
  
  var method: HTTPMethod {
    switch  self {
    case .videos(_):
      return .get
    }
  }
  
  var parameters: RequestParams {
    switch  self {
    case .videos(let items):      
      let ids = items.map {$0.videoId ?? "" }.joined(separator: ",")
      return .url(["key": Constants.Youtube.appKey,
                   "part": "contentDetails",
                   "id": ids])
    }
  }
  
  var headers: [String : Any]? {
    switch  self {
    case .videos(_):
      return [:]
    }
  }
}
