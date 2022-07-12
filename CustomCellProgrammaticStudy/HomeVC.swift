//
//  ViewController.swift
//  CustomCellProgrammaticStudy
//
//  Created by Ömer Faruk Kılıçaslan on 12.07.2022.
//

import UIKit

class HomeVC: UIViewController {
    
    
    private let myImageView: UIImageView = {
        
        let imageView = UIImageView()
        
        return imageView
        
    }()
    
    
    private let tableView: UITableView = {
       
        let table = UITableView()
        
        table.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        
        table.register(CenterImageTableViewCell.self, forCellReuseIdentifier: CenterImageTableViewCell.identifier)
        
        table.register(ImageLabelTableViewCell.self, forCellReuseIdentifier: ImageLabelTableViewCell.identifier)
        
        
        return table
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        view.addSubview(myImageView)
        view.backgroundColor = .lightGray
        configureImageView()
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationController?.navigationBar.isHidden = true
        

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = CGRect(x: 0, y: view.frame.size.height / 2, width: view.frame.size.height, height: view.frame.size.height / 2)
        myImageView.frame = CGRect(x: 20, y: 50, width: view.frame.size.width - 50, height: view.frame.size.height / 2 - 100)
    }
    
    func configureImageView() {
        
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: "image1")
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
        
        
    }


}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath) as! SimpleTableViewCell
            cell.textLabel?.text = "I am Simple Table View Cell"
            return cell
        }
        
        else if indexPath.row < 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CenterImageTableViewCell.identifier, for: indexPath) as! CenterImageTableViewCell
            cell.configure()
            return cell
            
        }
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageLabelTableViewCell.identifier, for: indexPath) as! ImageLabelTableViewCell
            cell.configureImageView()
            cell.configureLabel(with: "nothing but text")
            return cell
            
        }
//
//        else{
//
//
//        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
