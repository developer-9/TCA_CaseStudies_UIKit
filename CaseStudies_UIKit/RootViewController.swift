//
//  RootViewController.swift
//  CaseStudies_UIKit
//
//  Created by Taisei Sakamoto on 2022/04/20.
//

import ComposableArchitecture
import SwiftUI
import UIKit

struct CaseStudy {
    let title: String
    let viewController: () -> UIViewController
    
    init(title: String, viewController: @autoclosure @escaping () -> UIViewController) {
        self.title = title
        self.viewController = viewController
    }
}

final class RootViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Case Studies"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let caseStudy = datasou
    }
}
