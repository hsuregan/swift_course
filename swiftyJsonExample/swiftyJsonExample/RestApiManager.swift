//
//  restAPIManager.swift
//  swiftyJsonExample
//
//  Created by Regan Hsu on 7/29/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import Foundation

typealias ServiceResponse = (JSON, NSError?) -> Void
//makes returning stuff easier

class RestApiManager: NSObject {
    static let sharedInstance = RestApiManager()
    
    let baseURL = "http://api.randomuser.me/"
    
    func getRandomUser(onCompletion: (JSON) -> Void) {
        makeHTTPGetRequest(baseURL, onCompleteion: {
            json, err -> Void in onCompletion(json)
        })
    }
    
    //used in every call if you have another api or whatever
    func makeHTTPGetRequest(path: String, onCompleteion: ServiceResponse) {
        let request = NSMutableURLRequest(URL: NSURL(string: path)!)
        
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(request, completionHandler: {
            data,
            response,
            error in let json:JSON = JSON(data: data)
            onCompleteion(json, error)
        })
        
        task.resume()
    }
}