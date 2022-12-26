//
//  DefaultCollectionViewCell.swift
//  testttt
//
//  Created by User on 23.12.2022.
//

import UIKit

protocol Identifiable {
    static var identifier: String { get }
}

class DefaultCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        self.contentView.layer.cornerRadius = 15
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DefaultCollectionViewCell: Identifiable {
    static var identifier: String {
        String(describing: self)
    }
}
