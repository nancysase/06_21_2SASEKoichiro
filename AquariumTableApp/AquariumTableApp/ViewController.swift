//
//  ViewController.swift
//  AquariumTableApp
//
//  Created by SASE Koichiro on 2020/06/08.
//  Copyright © 2020 SASE Koichiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    let infoLists: [AquariumInfo] = [
        AquariumInfo(iconName: "otarunew", title: "小樽水族館", url: "https://otaru-aq.jp/"),
        AquariumInfo(iconName: "asahiyama", title: "旭山動物園", url: "https://www.city.asahikawa.hokkaido.jp/asahiyamazoo/index.html"),
        AquariumInfo(iconName: "noboribetu", title: "登別マリンパークニクス", url: "https://www.nixe.co.jp/"),
        AquariumInfo(iconName: "muroran", title: "市立室蘭水族館", url: "http://iburi.net/murosui/index.html"),
        AquariumInfo(iconName: "seaparadise", title: "あざらしシーパラダイス", url: "https://o-tower.co.jp/publics/index/37/"),
        AquariumInfo(iconName: "sanpiaza", title: "サンピアザ水族館", url: "http://www.sunpiazza-aquarium.com/index.html")
    ]
    
    //


    @IBOutlet weak var aquariumTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        aquariumTable.delegate = self
        aquariumTable.dataSource = self
        configureTableViewCell()
    }
    
    func configureTableViewCell(){
        let nib = UINib(nibName: "AquariumTableViewCell", bundle: nil)
        let cellID = "AquariumCell"
        aquariumTable.register(nib, forCellReuseIdentifier: cellID)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = aquariumTable.dequeueReusableCell(withIdentifier: "AquariumCell", for: indexPath) as! AquariumTableViewCell
        cell.iconView.image = UIImage(named: infoLists[indexPath.row].iconName)
        cell.nameLabel.text = infoLists[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.aquariumInfo = infoLists[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let indexPath = self.tableView.indexPathForSelectedRow {
//            let item = infoLists[indexPath.row]
//            let controller = segue.destination as! DetailViewController
//            controller.link = item.url
//        }
//    }


}

