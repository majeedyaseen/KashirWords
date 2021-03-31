//
//  SettingsViewController.swift
//  KashirWords
//
//  Created by Yaseen Majeed on 10/03/20.
//  Copyright © 2020 Yaseen Majeed. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section == 0{
//            return "General"
//        }
//        else if section == 1{
//            return "App Settings"
//        }
        return "Settings"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0{
//            return 4
//        }
//        if section == 1{
//            return 2
//        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
