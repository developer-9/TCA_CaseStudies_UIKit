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

let dataSource: [CaseStudy] = [
    CaseStudy(
        title: "Basics",
        viewController: CounterViewController(
            store: Store(
                initialState: CounterState(),
                reducer: counterReducer,
                environment: CounterEnvironment()
            )
        )
    )
]

final class RootViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Case Studies"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let caseStudy = dataSource[indexPath.row]
        let cell = UITableViewCell()
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = caseStudy.title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let caseStudy = dataSource[indexPath.row]
        navigationController?.pushViewController(caseStudy.viewController(), animated: true)
    }
}

struct RootViewController_Previews: PreviewProvider {
    static var previews: some View {
        let vc = UINavigationController(rootViewController: RootViewController())
        return UIViewRepresented(makeUIView: { _ in vc.view })
    }
}
