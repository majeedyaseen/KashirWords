//
//  CategoryListItem.swift
//  KashirWords
//
//  Created by appliedimac on 30/01/20.
//  Copyright © 2020 Yaseen Majeed. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation


class CategoryListItem: UIViewController{
    var data:[SoundModel]?
    @IBOutlet weak var categoryListTableView: UITableView!
    @IBOutlet weak var headerImage: UIImageView!
    
    var player: AVAudioPlayer?
    var headerImageToSet: UIImage?
    
    override func viewDidLoad() {
        categoryListTableView.delegate = self
        categoryListTableView.dataSource = self
        categoryListTableView.register(UINib(nibName: "categoryElementsCell", bundle: nil), forCellReuseIdentifier: "customListCell")
        headerImage.image = headerImageToSet
    }
    
 

    func playSound(for audio: String) {
        guard let url = Bundle.main.path(forResource: audio, ofType: nil)else { return }//Bundle.main.url(forResource: "bear", withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: url) , fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
}

extension CategoryListItem: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.categoryListTableView.dequeueReusableCell(withIdentifier: "customListCell") as! categoryElementsCell
        cell.englishName.text = data?[indexPath.row].title ?? "No tile found"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let data = data{
            playSound(for: data[indexPath.row].audioFileLocation ?? "")
        }
        //play some default sound
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    
}
