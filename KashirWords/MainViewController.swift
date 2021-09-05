//
//  ViewController.swift
//  KashirWords
//
//  Created by Yaseen Majeed on 22/12/19.
//  Copyright © 2019 Yaseen Majeed. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var allCategoriesCollectionView: UICollectionView!
    @IBOutlet weak var profileContact: UIImageView!
    
    private let categories = ["Vegetables","Relations","Numbers","Fruits","Colors","Animals"]
    private let dataModels = [vegetableData , relationsData , numbersData , fruitsData , colorsData , animalsData]
    private let itemsPerRow: CGFloat = 2
    private let sectionInsets = UIEdgeInsets(top: 50.0,
    left: 20.0,
    bottom: 50.0,
    right: 20.0)
    
    override func viewDidLoad() {
         super.viewDidLoad()
        let profileGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(profileClicked))
        profileContact.isUserInteractionEnabled = true
        profileContact.addGestureRecognizer(profileGestureRecognizer)
        allCategoriesCollectionView.delegate = self
        allCategoriesCollectionView.dataSource = self
        self.allCategoriesCollectionView.register(UINib(nibName: "categoryItemCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "categoryCell")
     }
    
    
    @objc func profileClicked() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "categoryList") as! CategoryListItem
        nextViewController.showContactScreen = true
        nextViewController.headerImageToSet = #imageLiteral(resourceName: "header-contact")
        self.present(nextViewController, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! categoryItemCellCollectionViewCell
        print(categories[indexPath.row])
        cell.categoryItemLabel.text = categories[indexPath.row]
        cell.categoryItemImgView.image = UIImage(named: categories[indexPath.row])
        return cell
    }
    

    func getCategoryImage(for category: String) -> UIImage {
        switch category {
        case "Vegetables":
            return #imageLiteral(resourceName: "header-vegetables")
        case "Relations":
            return #imageLiteral(resourceName: "header-relations")
        case "Numbers":
            return #imageLiteral(resourceName: "header-numbers")
        case "Fruits":
            return #imageLiteral(resourceName: "header-fruit")
        case "Colors":
            return #imageLiteral(resourceName: "header-colors")
        case "Animals":
            return #imageLiteral(resourceName: "header-animals")
        default:
            return #imageLiteral(resourceName: "header-vegetables")
        }
    }

}

extension MainViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "categoryList") as! CategoryListItem
        nextViewController.data = dataModels[indexPath.row]
        nextViewController.headerImageToSet = getCategoryImage(for: categories[indexPath.row])
        self.present(nextViewController, animated: true, completion: nil)
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
      return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
      return sectionInsets.left
    }
    
}

