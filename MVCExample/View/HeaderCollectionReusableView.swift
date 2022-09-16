//
//  HeaderCollectionReusableView.swift
//  MVCExample
//
//  Created by Ivan Nieto on 08/09/22.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    private let HeaderLabel: UILabel = {
        let headerLabel = UILabel()
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.font = UIFont(name: "Pokemon Solid", size: 35)
        headerLabel.text = "Selecciona un Pokemon"
        headerLabel.numberOfLines = 0
        return headerLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(HeaderLabel)
        HeaderLabel.textAlignment = .center
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: HeaderLabel.topAnchor),
            bottomAnchor.constraint(equalTo: HeaderLabel.bottomAnchor),
            leadingAnchor.constraint(equalTo: HeaderLabel.leadingAnchor),
            trailingAnchor.constraint(equalTo: HeaderLabel.trailingAnchor)
        ])
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
