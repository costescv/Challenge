//
//  Copyright © 2018 Vasilica Costescu. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController {

    var users: [User]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UsersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users!.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)

        if let cell = cell as? UserTableViewCell {
            let user = users![indexPath.row]
            cell.photoImageView.image = UIImage(named: user.photo)
            cell.nameLabel.text = "Vasi"
        }

        return cell
    }
    
}
