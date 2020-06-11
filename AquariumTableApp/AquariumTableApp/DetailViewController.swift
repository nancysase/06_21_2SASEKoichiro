//
//  DetailViewController.swift
//  AquariumTableApp
//
//  Created by SASE Koichiro on 2020/06/08.
//  Copyright © 2020 SASE Koichiro. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    var aquariumInfo: AquariumInfo?
    
    var link: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let aquariumInfo = aquariumInfo else { return }
        guard let url = URL(string: aquariumInfo.url) else { return }
        let request = URLRequest(url: url)
        self.webView.load(request)
        
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
