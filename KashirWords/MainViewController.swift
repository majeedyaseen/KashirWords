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
    private let categories = ["Vegetables","Relations","Numbers","Fruits","Colors","Animals"]
    private let dataModels = [vegetableData , relationsData , numbersData , fruitsData , colorsData , animalsData]
    private let itemsPerRow: CGFloat = 2
    private let sectionInsets = UIEdgeInsets(top: 50.0,
    left: 20.0,
    bottom: 50.0,
    right: 20.0)
    
    override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
        allCategoriesCollectionView.delegate = self
        allCategoriesCollectionView.dataSource = self
        self.allCategoriesCollectionView.register(UINib(nibName: "categoryItemCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "categoryCell")
     }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! categoryItemCellCollectionViewCell
        print(categories[indexPath.row])
        cell.categoryItemLabel.text = categories[indexPath.row]
        cell.categoryItemImgView.image = UIImage(named: categories[indexPath.row])
        //cell.contentView.layer.cornerRadius = 20
        //cell.contentView.layer.borderWidth = 1.0

        //cell.contentView.layer.borderColor = UIColor.clear.cgColor
        //cell.contentView.layer.masksToBounds = true

        //cell.layer.shadowColor = UIColor.gray.cgColor
        //cell.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        //cell.layer.shadowRadius = 2.0
        //cell.layer.shadowOpacity = 1.0
        //cell.layer.masksToBounds = false
        //cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        
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
        //self.navigationController?.pushViewController(nextViewController, animated:true)
        print("clicked \(indexPath.row)")
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

