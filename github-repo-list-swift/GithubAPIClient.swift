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
    class func getRepositories(with completion: [String: Any]-> ()){
        
        let url = "https://api.github.com/repositories?client_id=" + Secrets.client_id + "&client_secret=" + Secrets.client_secret
        let request = URLRequest(url: URL(string: secrets.client_id))
        request.httpMethod = "GET"
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request, completionHandler: {
            do{
                let data = try JSONSerialization.data(withJSONObject: String, options: []) as? [String:Any] ?? [:]
                if let data = data
            }catch{}
        })
        dataTask.resume()
    }
}
    

protocol GitAPIClientDelegate: class{
    func clientUpdate(dictionaries: [Any])
}
