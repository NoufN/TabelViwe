//
//  StedensCell.swift
//  TabelViwe
//
//  Created by nouf on 26/10/2021.
//

import UIKit
protocol HandlaCcllButtonClick {
    func buttonClicked(coler:UIColor)
    
}

class StedensCell: UITableViewCell {
    var  color : UIColor = .yellow
    var dalegate: HandlaCcllButtonClick?  = nil
    var selectedCall = false
    @IBOutlet weak var nameStd: UILabel!
    @IBOutlet weak var descraptionLabel: UILabel!
    @IBOutlet weak var buttonStd: UIButton!
    
    @IBAction func colorButtonClicked(_ sender: Any) {
        dalegate?.buttonClicked(coler: self.color)
                backgroundColor = UIColor.darkGray
        self.backgroundColor = selectedCall ?   UIColor.darkGray :  UIColor.red
        selectedCall.toggle()

//              selectedCall = !selectedCall

    }
}
