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
import MessageUI


class CategoryListItem: UIViewController{
    var data:[SoundModel]?
    @IBOutlet weak var categoryListTableView: UITableView!
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var contactUsView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var email: UIImageView!
    @IBOutlet weak var linkedIn: UIImageView!
    @IBOutlet weak var twitter: UIImageView!
    
    var player: AVAudioPlayer?
    var headerImageToSet: UIImage?
    var showContactScreen = false
    
    override func viewDidLoad() {
        if showContactScreen {
            categoryListTableView.isHidden = showContactScreen
            prepareContactUs()
        }
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
    
    @objc func emailClicked() {
        if MFMailComposeViewController.canSendMail() {
                let mail = MFMailComposeViewController()
                mail.mailComposeDelegate = self
                mail.setToRecipients(["iamyaseenmajeed@gmail.com"])
                mail.setSubject("From Kashir App")
                present(mail, animated: true)
            } else {
                let alert = UIAlertController(title: "Error", message: "Email not Configured", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
    }
    
    @objc func linkedInClicked() {
        let appURL = URL(string: "linkedin://profile/yaseenmajeed/")!
                let application = UIApplication.shared
                
                if application.canOpenURL(appURL)
                {
                    application.open(appURL)
                }
                else
                {
                    let webURL = URL(string: "https://www.linkedin.com/in/yaseenmajeed/")!
                    application.open(webURL)
                }
    }
    
    @objc func twitterClicked() {
        let appURL = URL(string: "twitter://user?screen_name=iamyaseenmajeed")!
                let application = UIApplication.shared
                
                if application.canOpenURL(appURL)
                {
                    application.open(appURL)
                }
                else
                {
                    let webURL = URL(string: "https://twitter.com/iamyaseenmajeed")!
                    application.open(webURL)
                }
    }
    
    func prepareContactUs(){
        profileImage.makeRounded()
        let emailGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(emailClicked))
        let linkedInGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(linkedInClicked))
        let twitterGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(twitterClicked))
        email.isUserInteractionEnabled = true
        linkedIn.isUserInteractionEnabled = true
        twitter.isUserInteractionEnabled = true
        email.addGestureRecognizer(emailGestureRecognizer)
        linkedIn.addGestureRecognizer(linkedInGestureRecognizer)
        twitter.addGestureRecognizer(twitterGestureRecognizer)
        
    }
    
}

extension CategoryListItem: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.categoryListTableView.dequeueReusableCell(withIdentifier: "customListCell") as! categoryElementsCell
        cell.englishName.text = data?[indexPath.row].title ?? "No title found"
        cell.kashmiriName.text = data?[indexPath.row].Kashmiriname ?? "No Kashmiri name"
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


extension CategoryListItem: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
}
