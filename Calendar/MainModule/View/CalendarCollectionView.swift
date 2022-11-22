//
//  CalendarCollectionView.swift
//  Calendar
//
//  Created by Павел Афанасьев on 21.11.2022.
//

import UIKit

class CalendarCollectionView: UICollectionView {
    
    private let customLayout = UICollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: customLayout)
        
        setupCustomLayout()
        setupCollectionView()
        setDelegate()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCustomLayout() {
        customLayout.minimumLineSpacing = 3
        customLayout.scrollDirection = .horizontal
        
    }
    
    private func setupCollectionView() {
        register(CalendarCell.self, forCellWithReuseIdentifier: CalendarCell.reuseID)
        
        showsHorizontalScrollIndicator = false
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .none
        bounces = false
    }
    
    private func setDelegate() {
        delegate = self
        dataSource = self
    }
}

//MARK: - UICollectionViewDataSource

extension CalendarCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        17
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CalendarCell.reuseID, for: indexPath) as? CalendarCell else { return UICollectionViewCell()}
        return cell
    }
}

//MARK: - UICollectionViewDelegate

extension CalendarCollectionView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tap tap tap")
    }
}

//MARK: - UICollectionViewDelegateFlowLayout

extension CalendarCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 7.5, height: collectionView.frame.height)
    }
}
