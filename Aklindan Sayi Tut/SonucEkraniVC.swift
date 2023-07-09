//
//  SonucEkraniVC.swift
//  Aklindan Sayi Tut
//
//  Created by Merve Nur Nerkis on 5.07.2023.
//

import UIKit

class SonucEkraniVC: UIViewController {

    @IBOutlet weak var imageViewSonuc: UIImageView!
    
    @IBOutlet var labelSonuc: UIView!
    
    var sonuc:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.title = "sonuç ekranı"

        print(sonuc!)
        
        if sonuc! {
            imageViewSonuc.image = UIImage(named: "mutlu_resim")
            
        }else {
            imageViewSonuc.image = UIImage(named: "uzgun_resim")
        }
    }
    


    @IBAction func tekraroyna(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
