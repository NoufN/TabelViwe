//
//  DetailsVC.swift
//  TabelViwe
//
//  Created by nouf on 28/10/2021.
//

import UIKit

class DetailsVC: UIViewController  , UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cityDetails!.moreImageCity!.count
    }

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat{
    return 0.50
}
//    بين كل صف
 func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat{
    
     return 5
}

//func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//    return UIEdgeInsets(top:0.3, left: 0.3, bottom: 0.3, right: 0.3)
//}

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: self.view.frame.width * 0.3 , height: self.view.frame.width * 0.3 )
//      return CGSize(width: 97, height: 93)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "My cell", for: indexPath) as! MoreImageCVC
        
        cell.moreImage.image = cityDetails?.moreImageCity?[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//                print("Swift course", indexPath.row)
       
        
        let nextVC = storyboard?.instantiateViewController(withIdentifier:"imagecell") as! imageVC

        nextVC.imageV = cityDetails?.moreImageCity?[indexPath.row]
      

        self.navigationController?.pushViewController( nextVC , animated: true)

    }
  

    var cityDetails : InfoCity?
    @IBOutlet weak var desciptionCiTy: UITextField!
    @IBOutlet weak var NameCtiyLabel: UILabel!
    @IBOutlet weak var moreImage: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameCtiyLabel.text = cityDetails?.nameCity
        desciptionCiTy.text = cityDetails?.descriptions
  
        moreImage.delegate = self
        moreImage.dataSource = self
    }
    



}
