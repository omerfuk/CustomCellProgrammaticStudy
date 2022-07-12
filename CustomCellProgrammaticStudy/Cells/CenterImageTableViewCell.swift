//
//  CenterImageTableViewCell.swift
//  CustomCellProgrammaticStudy
//
//  Created by Ömer Faruk Kılıçaslan on 12.07.2022.
//

import UIKit

class CenterImageTableViewCell: UITableViewCell {

    static let identifier = "CenterImageTableViewCell"
    
    private let myImageView: UIImageView = {
        
        let imageView = UIImageView()
        return imageView
        
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect(x: (contentView.frame.size.width) / 2 - 200, y: 5, width: 100, height: 100)
        
    }
    
    
    public func configure() {
        
        contentView.addSubview(myImageView)
        
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: "image1")
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
        
    }
    

    

}
