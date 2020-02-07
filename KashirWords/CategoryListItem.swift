//
//  CategoryListItem.swift
//  KashirWords
//
//  Created by appliedimac on 30/01/20.
//  Copyright © 2020 Yaseen Majeed. All rights reserved.
//

import Foundation
import UIKit

class CategoryListItem: UIViewController{
    //let soundList:[SoundModel]?
    
    @IBOutlet weak var categoryListTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        categoryListTableView.delegate = self
        categoryListTableView.dataSource = self
        categoryListTableView.register(UINib(nibName: "categoryElementsCell", bundle: nil), forCellReuseIdentifier: "customListCell")
    }
    
}

extension CategoryListItem: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //soundList?.count ?? 0
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.categoryListTableView.dequeueReusableCell(withIdentifier: "customListCell") as! categoryElementsCell
        cell.englishName.text = "Test"
        cell.nativeName.text = "Test2"
        return cell
    }
    
    
    
    
    
}
