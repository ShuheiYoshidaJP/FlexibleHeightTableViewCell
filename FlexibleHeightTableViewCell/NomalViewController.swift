//
//  NormalViewController.swift
//  FlexibleHeightTableViewCell
//
//  Created by 吉田周平 on 2021/07/25.
//

import UIKit

class NormalViewController: UIViewController {
    let list = ["a",
                "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"]
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension NormalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "nomal") as? NomalTableViewCell else {
            fatalError("\(#function): error")
        }
        cell.config(text: list[indexPath.row])
        return cell
    }
    
    
}

class NomalTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    func config(text: String) {
        label.text = text
    }
}
