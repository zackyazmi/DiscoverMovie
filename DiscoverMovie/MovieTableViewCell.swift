//
//  MovieTableViewCell.swift
//  DiscoverMovie
//
//  Created by Zacky Ilahi Azmi on 18/02/23.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    private lazy var posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(posterImageView)
        
        configureImageView()
        setImageConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureImageView() {
        posterImageView.layer.cornerRadius = 20
        posterImageView.clipsToBounds = true
    }
    
    func setImageConstraint() {
        posterImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            posterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            posterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            posterImageView.heightAnchor.constraint(equalToConstant: 350),
            posterImageView.widthAnchor.constraint(equalToConstant: 350),
        ])
    }
    
    func configure(gambar: String) {
        posterImageView.image = UIImage(named: gambar)
    }
}
