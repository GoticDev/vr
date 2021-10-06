//
//  SecondViewController.swift
//  VictorDelaTorreA
//
//  Created by Victor De la Torre Anicama on 2/10/21.
//

import Foundation
import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    let name = "Victor Raul De la Torre Anicama"
    var myData = ["- Datos Principales", "- Skills", "- Educacion", "- Experiencia Laboral", "- Cursos Adicionales", "- Proyectos"]
    var myDetail = ["datos_principales".detailsConsult(), "skills".detailsConsult(), "educacion".detailsConsult(), "experiencia_laboral".detailsConsult(), "cursos_adicionales".detailsConsult(), "proyectos".detailsConsult()]
  
    override func viewDidLoad() {
        self.view.backgroundColor = .lightGray
        navigationItem.title = "Acerca de mi"
        imageLabel.image = UIImage(named: "foto1")
        imageLabel.makeRounded()
        
        secondLabel.text = name
        
        tableView.backgroundColor = UIColor.lightGray
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        cell.myCellLabel.text = myData[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.labelTitle = myData[indexPath.row]
        vc?.detail = myDetail[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}


