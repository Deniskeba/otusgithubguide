//
//  TestTableViewCell.swift
//  TesttableView
//
//  Created by Denis Kobylkov on 06.02.2023.
//

import UIKit
 
class TestTableViewCell: UITableViewCell {
    let languageLabel = UILabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        languageLabel.textColor = .orange
        addSubview(languageLabel)
        languageLabel.translatesAutoresizingMaskIntoConstraints = false
        languageLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 50).isActive = true
//        languageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        languageLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        languageLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    func setLanguage(language: String) {
        languageLabel.text = language
    }
}
