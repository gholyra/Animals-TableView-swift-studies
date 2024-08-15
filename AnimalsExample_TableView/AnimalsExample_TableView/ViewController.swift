//
//  ViewController.swift
//  AnimalsExample_TableView
//
//  Created by Usuário Convidado on 14/08/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        celula.textLabel?.text = "Item número \(indexPath.row)"
        celula.imageView?.image = UIImage(named: "corinthians.png")
        return celula
    }



}

