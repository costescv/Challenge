//
//  Copyright © 2018 Vasilica Costescu. All rights reserved.
//

import UIKit

class CreateUserViewController: UIViewController {

    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var photoTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!

    weak var delegate: UserCreationDelegate?
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }

    @IBAction func save(_ sender: UIBarButtonItem) {
        let user = User(name: nameTextField.text!, photo: photoTextField.text!, description: descriptionTextField.text!)
        delegate?.save(user: user)
        dismiss(animated: true)
    }
}
