//
//  FISGithubAPIClient.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubAPIClient {
    weak var delegate = ReposDataStore.sharedInstance
    class func getRepositories(with completion: ([String: Any])-> ()){
        print ("initializing web client")
        guard let url =  URL(string: "https://api.github.com/repositories?client_id=" + Secrets.client_id.rawValue + "&client_secret=" + Secrets.client_secret.rawValue) else {return}
        print ("url checksum complete")
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request, completionHandler: { (data, response, error) in
            print("initializing dataTask")
            if let data = data {
                print ("data received from server:")
                print (data)
                do {
                    let responseJSON = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] ?? [:]
                    print (responseJSON)
                    
                }catch{}
            }
        })
            
        dataTask.resume()
    }
}
    

//protocol GitAPIClientDelegate: class{
//    func clientUpdate(dictionaries: [Any])
//}
