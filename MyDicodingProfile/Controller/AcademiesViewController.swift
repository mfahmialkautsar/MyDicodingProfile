//
//  AcademiesViewController.swift
//  MyDicodingProfile
//
//  Created by Fahmi on 13/05/20.
//  Copyright © 2020 Kementerian Agama Republik Indonesia. All rights reserved.
//

import UIKit

class AcademiesViewController: UIViewController {

    @IBOutlet weak var academyTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "My Academies"
        academyTableView.dataSource = self
        academyTableView.delegate = self
        academyTableView.register(UINib(nibName: "AcademyTableViewCell", bundle: nil), forCellReuseIdentifier: "AcademyCell")
    }

}

extension AcademiesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return academies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AcademyCell", for: indexPath) as! AcademyTableViewCell
        
        let academy = academies[indexPath.row]
        cell.academyLogo.image = academy.logo
        cell.academyName.text = academy.name
        cell.academyStats.text = academy.stats
        return cell
    }
}

extension AcademiesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        detail.academy = academies[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
