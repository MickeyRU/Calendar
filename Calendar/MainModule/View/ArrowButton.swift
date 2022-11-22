//
//  ArrowButton.swift
//  Calendar
//
//  Created by Павел Афанасьев on 21.11.2022.
//

import UIKit

class ArrowButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(imageName: String) {
        self.init(type: .system)
        setImage(UIImage(systemName: imageName), for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        tintColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = hexStringToUIColor(hex: "891900")
    }
}
