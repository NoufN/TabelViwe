//
//  File.swift
//  TabelViwe
//
//  Created by nouf on 27/10/2021.
//

import Foundation
import UIKit

class InfoCity {
    
    let nameCity : String?
    let imageCity : UIImage?
    let bgColor : UIColor?
    let moreImageCity  : [UIImage]?
    let descriptions : String?

    init (nameCity : String? , imageCity : UIImage? , background : UIColor? , moreImageCity  : [UIImage]? ,description : String? ){
        self.nameCity = nameCity
        self.imageCity = imageCity
        self.bgColor = background
        self.moreImageCity  = moreImageCity
       self.descriptions =  description
        
    }
    
    
}
