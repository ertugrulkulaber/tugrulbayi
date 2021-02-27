//
//  DetailsViewController.swift
//  tugrulbayi
//
//  Created by Ertuğrul Kulaber on 20.01.2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageWiev: UIImageView!
    
    @IBOutlet weak var arabamarkLabel: UILabel!
    
    @IBOutlet weak var arabaModelLabel: UILabel!
    
    var secilen : Araba?
    
    override func viewDidLoad() {
    
        super.viewDidLoad()

        arabamarkLabel.text = secilen?.isim
        arabaModelLabel.text = secilen?.modeli
        imageWiev.image = secilen?.image
        // Do any additional setup after loading the view.
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
