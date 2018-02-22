//
//  CountryTableViewCell.swift
//  ProgramaticCustomCell
//
//  Created by Marius Pop on 22/02/2018.
//  Copyright © 2018 SwiftUni. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    // 1.
    let country: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        
        return l
    }()
    
    let flag: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        
        return l
    }()
    
    // 2.
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(country)
        country.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        country.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16.0).isActive = true
        
        contentView.addSubview(flag)
        flag.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        flag.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16.0).isActive = true
    }
    
    // 3.
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not implemented")
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
