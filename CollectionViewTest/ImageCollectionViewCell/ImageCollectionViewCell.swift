//
//  ImageCollectionViewCell.swift
//  CollectionViewTest
//
//  Created by Hồng Nhật Huỳnh Trần on 2025/01/19.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    static let identifier: String = "ImageCollectionViewCell"
    
    // Array of image names
    let b_komachi = ["chara_kana", "chara_ruby", "chara_memcho"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.contentView.backgroundColor = .blue
        imageView.contentMode = .scaleAspectFit
    }
    
    public func configure(with index: Int) {
        let imageName = b_komachi[index]
        if let image = UIImage(named: imageName) {
            imageView.image = image
        }
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "ImageCollectionViewCell", bundle: .main)
    }
}
