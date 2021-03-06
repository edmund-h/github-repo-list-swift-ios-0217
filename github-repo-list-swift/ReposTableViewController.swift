//
//  FISReposTableViewController.swift
//  github-repo-list-swift
//
//  Created by  susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ReposTableViewController: UITableViewController{ //, ReposDataStoreDelegate
    
    var store = ReposDataStore.sharedInstance
    var repos: [GithubRepository]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        repos = store.repositories
        self.tableView.accessibilityLabel = "tableView"
        GithubAPIClient.getRepositories { (dictionary) in
            return
        }
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.repositories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "repoCell", for: indexPath)
        cell.textLabel?.text = store.repositories[indexPath.row].fullName
        return cell
    }
    
    // MARK: - Repos Data Store Delegate
    func newRepoArrived(atIndex: Int) {
        repos.append(store.repositories[atIndex])
    }
    
}
