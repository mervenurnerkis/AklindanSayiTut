//
//  TahminEkraniVC.swift
//  Aklindan Sayi Tut
//
//  Created by Merve Nur Nerkis on 5.07.2023.
//

import UIKit

class TahminEkraniVC: UIViewController {
    
    @IBOutlet weak var labelKalanHak: UILabel!
    
    @IBOutlet weak var labelYardim: UILabel!
    
    @IBOutlet weak var textfieldGirdi: UITextField!
    
    var rastgeleSayi:Int?
    var kalanHak = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rastgeleSayi = Int(arc4random_uniform(100))
        
        print("rastgele sayı: \(rastgeleSayi!)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenVeri = sender as? Bool {
            let gidilecekVC = segue.destination as! SonucEkraniVC
            
            gidilecekVC.sonuc = gelenVeri
        }
    }
    
    @IBAction func tahminet(_ sender: Any) {
        labelYardim.isHidden = false
        kalanHak-=1
        
        if let veri = textfieldGirdi.text {
            if let tahmin = Int(veri) {
                
                if tahmin == rastgeleSayi! {
                    let sonuc = true
                    performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                    return
                }
                
                if tahmin > rastgeleSayi! {
                    labelYardim.text = "azalt"
                    labelKalanHak.text = "kalan hak: \(kalanHak)"
                }
                
                if tahmin < rastgeleSayi! {
                    labelYardim.text = "arttır"
                    labelKalanHak.text = "kalan hak: \(kalanHak)"
                }
                
                if(kalanHak == 0) {
                    let sonuc = false
                    performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                }
                    
                textfieldGirdi.text = ""
            }
        }
    }
}


