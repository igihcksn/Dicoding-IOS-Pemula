//
//  ViewController.swift
//  Dicoding-Submission-IOS
//
//  Created by Inggih Wicaksono on 23/06/20.
//  Copyright © 2020 igihcksn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nintendoTableView: UITableView!
    
    @IBAction func appreciate(_ sender: Any) {
        let alert = UIAlertController(title: "Apakah Anda berniat untuk mengapresiasi saya?",
            message: "Ini sangat berguna buat saya.",
            preferredStyle: .alert)
     
        alert.addAction(UIAlertAction(title: "Ya", style: .default, handler: { action in
            print("Terimakasih.")
        }))
     
        alert.addAction(UIAlertAction(title: "Tidak", style: .cancel, handler: { action in
            print("Mungkin lain kali.")
        }))
     
        self.present(alert, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nintendoTableView.dataSource = self
        
        nintendoTableView.register(UINib(nibName: "NintendoTableViewCell", bundle: nil), forCellReuseIdentifier: "NintendoCell")
        
    }

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nintendos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NintendoCell", for: indexPath) as! NintendoTableViewCell
        
        let nintendo = nintendos[indexPath.row]
        cell.nameNintendo.text = nintendo.name
        cell.descNintendo.text = nintendo.description
        cell.photoNintendo.image = nintendo.photo
        
        cell.photoNintendo.layer.cornerRadius = cell.photoNintendo.frame.height / 2
        cell.photoNintendo.clipsToBounds = true
        return cell
    }
    
}

