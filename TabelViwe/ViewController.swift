//
//  ViewController.swift
//  TabelViwe
//
//  Created by nouf on 26/10/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, HandlaCcllButtonClick {
    
    @IBOutlet weak var tabelViwe: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelViwe.delegate = self
        tabelViwe.dataSource = self
      
    }
    
    
    func buttonClicked(coler coloer: UIColor) {
        self.view.backgroundColor = coloer
    }
    
    var stedents = [
        Stdents ("Nouf", .lightGray  , .black , "swift " ),
        Stdents ("Naif", .brown , .black , "swift"),
        Stdents ("Hala", .yellow  , .black , "swift") ,
        Stdents ("Faisl",  .green , .black , "swift" ) ,
        Stdents ("Shahad", .black , .black  , "swift")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  stedents.count
    }
    
 
    func tableView(_ tableView: UITableView,heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCall") as! StedensCell
        
        cell.nameStd.text = stedents[indexPath.row].nameStd
        cell.buttonStd.setTitle(stedents[indexPath.row].dscription, for: .normal)
        cell.descraptionLabel.text = stedents[indexPath.row].dscription
        cell.color =  stedents[indexPath.row].bgColer!
        
        //        cell.backgroundColor = stedents[indexPath.row].bgColer
        //        cell.textLabel?.text = stedents[indexPath.row].nameStd
        //        cell.textLabel?.textColor = stedents[indexPath.row].textCaler
        
        cell.dalegate = self
        
        return cell
    }
    
    

    
    
}

