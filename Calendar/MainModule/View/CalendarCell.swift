//
//  CalendarCell.swift
//  Calendar
//
//  Created by Павел Афанасьев on 21.11.2022.
//

import UIKit

class CalendarCell: UICollectionViewCell {
    
    static let reuseID = "CalendarCell"
    
    private var dayNameLabel = UILabel()
    private var dayNumberLabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        setupCell()
        setupConstrainst()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCell() {
        
        backgroundColor = hexStringToUIColor(hex: "#AA2D11")
        layer.cornerRadius = 10
        
        dayNameLabel = createLabel(color: "#5B1404", fontSize: 18, labelText: "Чт")
        dayNumberLabel = createLabel(color: "#FFFFFF", fontSize: 18, labelText: "17")
    }
    
    private func setupConstrainst() {
        
        addSubview(dayNameLabel)
        addSubview(dayNumberLabel)
        
        NSLayoutConstraint.activate([
            dayNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            dayNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            dayNumberLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            dayNumberLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
