//
//  FISReposDataStore.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ReposDataStore: GitAPIClientDelegate {
    
    static let sharedInstance = ReposDataStore()
    
    var repositories: [GithubRepository] = []
    weak var delegate: ReposDataStoreDelegate
    
    init(dictionaries: [Any]) {
        unwrap(dictionaries)
    }
    
    fileprivate func clientUpdate(dictionaries: [Any]){
        unwrap(dictionaries)
    }

    fileprivate func unwrap (_ dictionaries: [Any]){
        dictionaries.forEach({
            if let thisDict = $0 as?[String:Any]{
                //records the amount of repositories before appending, then:
                let num = repositories.count
                repositories.append(GithubRepository(dictionary: [thisDict]))
                delegate.newRepoArrived(atIndex: num + 1)
                //notifies delegate that one more repo has arrived at the next index
            }
        })
    }
}

protocol ReposDataStoreDelegate {
    func newRepoArrived (atIndex: Int)
}
