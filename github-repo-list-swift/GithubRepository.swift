//
//  FISGithubRepository.swift
//  github-repo-list-swift
//
//  Created by susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubRepository {
    let fullName: String
    let htmlURL: URL?
    let repositoryID: String
    
    init (full_name: String, id: String, html_url: String){
        self.fullName = full_name
        self.htmlURL = URL(string: html_url)
        self.repositoryID = id
    }
    
    convenience init (dictionary: [String:Any]){
        let name = dictionary["full_name"] as? String ?? "nil"
        let id = dictionary["id"] as? String ?? "nil"
        var url: String
        if let owner = dictionary["owner"] as? [String: String]{
            url = owner["html_url"] ?? "nil"
        }else { url = "nil" }
        self.init(full_name: name, id: id, html_url: url)
    }
    
}
