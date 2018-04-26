//
//  Copyright © 2018 Vasilica Costescu. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController {

    var users: [User]?

    var selectedUser: User?

    override func viewDidLoad() {
        super.viewDidLoad()

//        users = loadUsers()
    }

    func loadUsers() -> [User] {
        return [
            User(name: "Vasi", photo: "vasi", description: "Vasi loves Swift and iOS development"),
            User(name: "Ana", photo: "ana", description: "Ana enjoys preparing for the Swift workshops"),
            User(name: "Emily", photo: "emy", description: "Emily is learning about Swift programming and doing the homework"),
            User(name: "👩‍💻", photo: "emoji", description: "Don't you just love this emoji?"),
            User(name: "Maria", photo: "maria", description: "I don't know Maria that well, she should introduce herself"),
            User(name: "John", photo: "vasi", description: "He likes running and watching TV"),
            User(name: "Jane", photo: "ana", description: "She loves maths and is incredible at algorithms"),
            User(name: "Simone", photo: "emy", description: "She's a brilliant gymnast.")
        ]
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CreateUser" {
            //we probably should set this view controller as a delegate for the destination view controller
            
        }

        if segue.identifier == "ShowUserDetails" {
            let userDetailsViewController = segue.destination as! UserDetailsViewController
            userDetailsViewController.user = selectedUser
        }
    }
}

extension UsersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users!.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)

        let user = users![indexPath.row]
        cell.nameLabel.text = "Vasi"
        cell.photoImageView.image = UIImage(named: user.photo)

        return cell
    }
}

extension UsersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedUser = users?[indexPath.row]
    }
}
