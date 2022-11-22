//
//  ViewController.swift
//  Calendar
//
//  Created by Павел Афанасьев on 21.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private let calendarCollectionView = CalendarCollectionView()
    private let leftArrow = ArrowButton(imageName: "chevron.left")
    private let rightArrow = ArrowButton(imageName: "chevron.right")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        [calendarCollectionView, leftArrow, rightArrow].forEach { view.addSubview($0) }
    
        NSLayoutConstraint.activate([
            leftArrow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            leftArrow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            leftArrow.heightAnchor.constraint(equalToConstant: 60),
            leftArrow.widthAnchor.constraint(equalToConstant: 40),
            
            rightArrow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            rightArrow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            rightArrow.heightAnchor.constraint(equalToConstant: 60),
            rightArrow.widthAnchor.constraint(equalToConstant: 40),

            calendarCollectionView.leadingAnchor.constraint(equalTo: leftArrow.trailingAnchor, constant: 5),
            calendarCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            calendarCollectionView.trailingAnchor.constraint(equalTo: rightArrow.leadingAnchor, constant: -5),
            calendarCollectionView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
