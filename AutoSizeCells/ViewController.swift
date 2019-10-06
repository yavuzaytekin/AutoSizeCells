//
//  ViewController.swift
//  AutoSizeCells
//
//  Created by Yavuz on 5.10.2019.
//  Copyright © 2019 Yavuz. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    fileprivate let cellId = "id"
    
    let messages = ["Naber?",
                    "İstanbul çok güzel bir şehir. Ama trafiği fazla olduğu için bazen insan sıkılıyor.",
                    "Türkiye'nin başkenti Ankaradır."]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(ChatMessageCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorStyle = .none
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return messages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ChatMessageCell
        cell.textLabel?.numberOfLines = 0
        cell.messageLabel.text = messages[indexPath.row]
        return cell
    }


}

