//
//  OtherViewController.swift
//  FlexibleHeightTableViewCell
//
//  Created by 吉田周平 on 2021/07/26.
//

import UIKit

class OtherViewController: UIViewController {
    let list = [
        "",
        "",
        "",
        "User description",
        "User description",
        "User description",
        "User description User descriptionUser descriptionUser descriptionUser descriptionUser description",
        "User description User descriptionUser descriptionUser descriptionUser descriptionUser description",
        "User description User descriptionUser descriptionUser descriptionUser descriptionUser description",
        "User description User description User descriptionUser descriptionUser descriptionUser descriptionUser descriptionUser description User descriptionUser descriptionUser descriptionUser descriptionUser descriptionUser description User descriptionUser descriptionUser descriptionUser descriptionUser description",
        "User description User description User descriptionUser descriptionUser descriptionUser descriptionUser descriptionUser description User descriptionUser descriptionUser descriptionUser descriptionUser descriptionUser description User descriptionUser descriptionUser descriptionUser descriptionUser description",
        "User description User description User descriptionUser descriptionUser descriptionUser descriptionUser descriptionUser description User descriptionUser descriptionUser descriptionUser descriptionUser descriptionUser description User descriptionUser descriptionUser descriptionUser descriptionUser description"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

class UserTableViewCell: UITableViewCell {
    @IBOutlet weak var userDescriptionLabel: UILabel!
    func config(text: String) {
        userDescriptionLabel.text = text
    }
}

extension OtherViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "user") as! UserTableViewCell
        cell.config(text: list[indexPath.row])
        return cell
    }
}

