//
//  StdClass.swift
//  TabelViwe
//
//  Created by nouf on 26/10/2021.
//

import Foundation
import UIKit

class Stdents {
    
    var nameStd : String?
    var bgColer : UIColor?
    var textCaler : UIColor?
    var dscription : String?
    
    init (_ nameStd : String? , _ bgColer : UIColor? , _ textCaler : UIColor? , _ dscription : String? )
    {
        
        self.nameStd = nameStd
        self.bgColer = bgColer
        self.textCaler = textCaler
        self.dscription = dscription
    }
    
}
