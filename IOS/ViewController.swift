//
//  ViewController.swift
//  IOS
//
//  Created by Tânia Gonçalves on 09/06/2019.
//  Copyright © 2019 ipvc.estg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    final let url = URL(string: "link")
    private var dadores = [Dador]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
        tableView.tableFooterView = UIView()
    }
    
    func downloadJson() {
        guard let downloadUrl = url else { return }
        URLSession.shared.dataTask(with: downloadUrl) { data, URLResponse, error in
            guard let data = data, error == nil, URLResponse != nil else {
                print("something is wrong")
                return
            }
            print("downloaded")
            do {
                let decoder = JSONDecoder()
                let DownloadedDadores = try decoder.decode(Dadores.self, from: data)
                self.dadores = DownloadedDadores.dadores
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print("something wrong after downloaded")
            }
        }.resume()
        print("something wrong after downloaded")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dadores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DadorCell") as? DadorCell else { return UITableViewCell() }
            
            cell.nomeLbl.text = dadores[indexPath.row].nome
            cell.tipoLbl.text = dadores[indexPath.row].tipo
            cell.hospitalLbl.text = dadores[indexPath.row].hospital
            
            cell.contentView.backgroundColor = UIColor.darkGray
            cell.backgroundColor = UIColor.darkGray
            
        
            return cell 
    }
}




