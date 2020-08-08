//
//  ViewController.swift
//  graphql-tutorials
//
//  Created by pandora on 2020/08/09.
//  Copyright © 2020 pandora. All rights reserved.
//

import Apollo
import UIKit

class ViewController: UIViewController {
    let apollo = ApolloClient(url: URL(string: "https://apollo-fullstack-tutorial.herokuapp.com")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.apollo.fetch(query: LaunchListQuery()) { result in
            switch result {
            case .success(let result):
                print(result)
            case .failure(let err):
                print(err)
            }
        }
    }


}

