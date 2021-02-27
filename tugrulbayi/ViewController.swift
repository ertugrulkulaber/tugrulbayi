//
//  ViewController.swift
//  tugrulbayi
//
//  Created by Ertuğrul Kulaber on 20.01.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var cardizi = [Araba]()
    
    var kullaniciSecimi : Araba?
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
      
        let audi = Araba(isim: "Audi", modeli: "2020 Model", image: UIImage(named: "audi")!)
        let togg = Araba(isim: "Togg", modeli: "2020 Model", image: UIImage(named: "togg")!)
        let mercedes = Araba(isim: "Mercedes", modeli: "2020 Model", image: UIImage(named: "mercedes")!)
        let passat = Araba(isim: "Passat", modeli: "2020 Model", image: UIImage(named: "passat")!)
    
        cardizi = [audi,togg,mercedes,passat]
        
        
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cardizi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cardizi[indexPath.row].isim
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi=cardizi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilen = kullaniciSecimi
        }
    }
}

