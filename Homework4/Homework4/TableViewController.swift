//
//  TableViewController.swift
//  Homework4
//
//  Created by Consultant on 4/26/22.
//

import UIKit

class TableViewController: UIViewController {
    
    let name = ["Robina Smith", "Terrance Smith", "Tavey Smith", "Trey Smith", "Jeremiah Francis", "John Francis", "Fredrick Smith", "Grego Russal", "Sierra Williams", "James Jones", "Michael Jordan", "Rick James", "50 Cent", "The Game", "Pooh Shiesty", "Big Russ", "Lebron James", "Kobe Bryant", "Shaq Oneal", "Tim Dunkin", "Luka Doncies", "Tim Boss", "Marvin Williams", "Mo3 Fire", "Gucci Mane", "Young Jeezy", "Yo Gotti", "Slim Dunkin", "TI harris", "YFN Lucci"]
    
    let pics = ["sample","sample1","sample2","sample3","sample4","sample5","sample6","sample7","sample8","sample9","sample10","sample11","sample12","sample13","sample14","sample15","sample16","sample17","sample18","sample19","sample20","sample21","sample22","sample23","sample24","sample25","sample26","sample27","sample28","sample29"]
    
    let on_off = [true, true, false, false, false, true, true, false, true, false,true, true, false, false, false, true, true, false, true, false,true, true, false, false, false, true, true, false, true, false]
    
    let bio = "This is about the person: "

    @IBOutlet weak var TableViewMain: UITableView!
    
    var selectedIndex = 0 {
        didSet {
            DispatchQueue.main.async {
                self.TableViewMain.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTableView()
    }
    
    
    private func setUpTableView() {
        self.TableViewMain.dataSource = self
        self.TableViewMain.delegate = self
        self.TableViewMain.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }

}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.localModel.count
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        
        cell?.configure(image: UIImage(named: pics[indexPath.row]), name: name[indexPath.row], bio: bio + name[indexPath.row], on_off: on_off[indexPath.row])
        
        return cell!
    }
    
}


extension TableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "bigChiefT", sender: self)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? PushViewController
        let selectedRowIndex = TableViewMain.indexPathForSelectedRow?.row
        vc?.names = name[selectedRowIndex ?? 0]
        vc?.pics = pics[selectedRowIndex ?? 0]
        vc?.bio = bio + name[selectedRowIndex ?? 0]
        vc?.on_off = on_off[selectedRowIndex ?? 0]
    }
        
        
}
    

