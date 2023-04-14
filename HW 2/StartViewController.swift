//
//  StartViewController.swift
//  HW 2
//
//  Created by Alexey Kanaev on 4/12/23.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setColorView(for color: UIColor)
}

final class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
    }

    @IBAction func settingsButton() {
        performSegue(withIdentifier: "showSettingsVC", sender: nil)
    }

}

// MARK: - SettingsViewControllerDelegate
extension StartViewController: SettingsViewControllerDelegate {
    func setColorView(for color: UIColor) {
        view.backgroundColor = color
    }
}
