//
//  ImageLabelTableViewCell.swift
//  CustomCellProgrammaticStudy
//
//  Created by Ömer Faruk Kılıçaslan on 12.07.2022.
//

import UIKit

class ImageLabelTableViewCell: UITableViewCell {

    static let identifier = "ImageLabelTableViewCell"
    
    private let myLabel:UILabel = {
        
        let label = UILabel()
        return label
        
    }()
    
    private let myImageView: UIImageView = {
       
        let imageView = UIImageView()
        return imageView
        
    }()
    
    public func configureLabel(with text: String) {
        contentView.addSubview(myLabel)
        myLabel.textAlignment = .center
        myLabel.text = text
        
    }
    
    public func configureImageView() {
        contentView.addSubview(myImageView)
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: "image1")
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect(x: 5, y: 5, width: 100, height: 100)
                
        myLabel.frame = CGRect(x: 110, y: 5, width: 260, height: 100)
    }
    

}
