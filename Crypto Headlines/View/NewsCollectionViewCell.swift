//
//  NewsCollectionViewCell.swift
//  Crypto Headlines
//
//  Created by Joshua Geronimo on 2/17/18.
//  Copyright © 2018 Joshua Geronimo. All rights reserved.
//

import UIKit

class NewsCollectionViewCell: UICollectionViewCell {
    
    // view container for the news title
    let titleContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.6980392157, blue: 0.6980392157, alpha: 0.5122270976)
        view.layer.cornerRadius = 25
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.5
        return view
    }()
    
    // Label for the news title
    let newsTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        let attributedText = NSMutableAttributedString(string: "Bitcoin Exchange Coinbase Defends Itself on Credit Card Charges, Admits Missteps" , attributes: [
            NSAttributedStringKey.font : UIFont.systemFont(ofSize: 14, weight: .semibold),
            NSAttributedStringKey.foregroundColor : UIColor.white])
        label.attributedText = attributedText
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    // this will be where the image is going to show
    let newsThumbnail: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "bitcoin"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 25
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpNewsFeedLayout()
    }
    
    // Will setup constraints for the view objects
    private func setUpNewsFeedLayout() {
        addSubview(titleContainer)
        titleContainer.addSubview(newsTitle)
        addSubview(newsThumbnail)
        // setup constraints
        NSLayoutConstraint.activate([
            // titleContainer - Constraint
            titleContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5),
            titleContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 27),
            titleContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -27),
            // newsTitle - Constraint
            newsTitle.topAnchor.constraint(equalTo: titleContainer.topAnchor, constant: 15),
            newsTitle.leadingAnchor.constraint(equalTo: titleContainer.leadingAnchor, constant: 8),
            newsTitle.trailingAnchor.constraint(equalTo: titleContainer.trailingAnchor, constant: -8),
            // newsThumbnail - Constraint
            newsThumbnail.topAnchor.constraint(equalTo: newsTitle.bottomAnchor, constant: 8),
            newsThumbnail.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.75),
            newsThumbnail.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 27),
            newsThumbnail.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -27)])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
