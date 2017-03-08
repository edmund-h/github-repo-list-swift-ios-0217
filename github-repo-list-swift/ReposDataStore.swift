//
//  FISReposDataStore.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ReposDataStore{ //: GitAPIClientDelegate
    
    static let sharedInstance = ReposDataStore()
    
    var repositories: [GithubRepository] = []
    //weak var delegate: ReposDataStoreDelegate
    
    init(){self.repositories = []}
    
    init(dictionaries: [String: Any]) {
        //unwrap(dictionaries)
    }
//    
//    fileprivate func clientUpdate(dictionaries: [Any]){
//        unwrap(dictionaries)
//    }

    fileprivate func unwrap (_ dictionaries: [Any]){
      
    }
}

//protocol ReposDataStoreDelegate {
//    func newRepoArrived (atIndex: Int)
//}
