//
//  NewVC.swift
//  TabelViwe
//
//  Created by nouf on 27/10/2021.
//

import UIKit

class NewVC: UIViewController ,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tabelViwe: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tabelViwe.dataSource = self
            tabelViwe.delegate = self
        }
    
    var city = [
      
        InfoCity(nameCity: "Riyadh", imageCity: UIImage(named: "riyadh")!, background:.darkGray  ,  moreImageCity: [UIImage(named: "riyadh")!,UIImage(named: "r1")!,UIImage(named: "r2")!,UIImage(named: "r3")!, UIImage(named: "r4")!] , description: "Capital of Saudi Arabia") ,
        InfoCity(nameCity: "Jaddah", imageCity: UIImage(named: "Jaddah")!, background:.darkGray,  moreImageCity:[ UIImage(named: "Jaddah")!], description: " Saudi Arabian port city on the Res Sea ") ,
        InfoCity(nameCity: "Dammam", imageCity: UIImage(named: "Dammam")!, background:.darkGray, moreImageCity: [UIImage(named: "Dammam")!], description: "Is the sixth-most populous Saudi Arabia") ,
        InfoCity(nameCity: "Abha", imageCity: UIImage(named: "Abha")!, background:.darkGray , moreImageCity:[ UIImage(named: "Abha")!], description: "Capital city of Aseer in Saudi Arabia") ,
        InfoCity(nameCity: "Makah", imageCity: UIImage(named: "makah")!, background:.darkGray , moreImageCity:[ UIImage(named: "makah")!], description: "قبلة المسلمين")
    ]
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return city.count
    }
    
//    func tableView(_ tableView: UITableView,heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 185
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("Swift course", indexPath.row)
        
        let selectOpject = city[indexPath.row]
        let nextVC = storyboard?.instantiateViewController(withIdentifier:"Dvc") as! DetailsVC
      
        nextVC.cityDetails = selectOpject
        self.navigationController?.pushViewController( nextVC , animated: true)
//        present(nextVC, animated: true ){
//            
//        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "city cell") as! CityTVCell
        cell.lebelNameCity.text = city[indexPath.row].nameCity
        cell.imageCity.image = city[indexPath.row].imageCity
        cell.backgroundColor = city[indexPath.row].bgColor!
        
    
        
        return cell
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
