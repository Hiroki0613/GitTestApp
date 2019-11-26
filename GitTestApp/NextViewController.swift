//
//  NextViewController.swift
//  GitTestApp
//
//  Created by Fujii Yuta on 2019/11/19.
//  Copyright © 2019 宏輝. All rights reserved.
//

import UIKit

class NextViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    var acceptString = String()
    var testString = String()
    var testArray = [String]()
    
    var testTimer = Timer()
    var gitString = String()
    
    var imageArray = ["1","2","3","4"]
    var textArray = ["あいうえお！","かきくけこ！","さしすせそ！","たちつてと！"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel.text = textArray[indexPath.row]
        cell.imageView!.image = UIImage(named:imageArray[indexPath.row])
        
        return cell
        
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
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
