//
//  ViewController.swift
//  Session1_homework
//
//  Created by Sabina Azimova on 16.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var titleLabel: UILabel =  {
        let label = UILabel()
        label.frame = CGRect.init(x: 0, y: 70, width: self.view.frame.width, height: 50)
        label.text = "REVIEWS"
        label.textColor = .systemPink
        label.font = UIFont.systemFont(ofSize: 36, weight: .semibold)
        label.backgroundColor = .white
        label.textAlignment = .center
        
        return label
    }()
    
    private lazy var avgReviewRating: UILabel =  {
        let label = UILabel()
        label.frame = CGRect.init(x: 0, y: 150, width: self.view.frame.width, height: 50)
        label.text = "4.0"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        label.backgroundColor = .white
        label.textAlignment = .center
        
        return label
    }()
    
    private lazy var avgRatingStars: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage.init(named: "fourstars")
        image.contentMode = .scaleAspectFit
        image.frame = CGRect.init(x: 0, y: 200, width: self.view.frame.width, height: 50)
        
        return image
    }()
    
    private lazy var reviewDesc: UILabel =  {
        let label = UILabel()
        label.frame = CGRect.init(x: 0, y: 250, width: self.view.frame.width, height: 20)
        label.text = "based on 3 reviews"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.backgroundColor = .white
        label.textAlignment = .center
        
        return label
    }()
    
    
    private lazy var reviewStack: UIStackView = {
        let stack = UIStackView()
        
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 8
        stack.backgroundColor = .white
        stack.frame = CGRect.init(x: 10, y: 300, width: self.view.frame.width - 20, height: 450)
        
        return stack
    }()
    
    private lazy var reviewRow1: UIView = {
        let view = UIView()
        
        view.backgroundColor = .white
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        
        return view
    }()
    
    private lazy var reviewRow2: UIView = {
        let view = UIView()
        
        view.backgroundColor = .white
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        
        return view
    }()
    
    private lazy var reviewRow3: UIView = {
        let view = UIView()
        
        view.backgroundColor = .white
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        
        return view
    }()
    
    private lazy var imageRow1: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage.init(named: "user1")
        image.contentMode = .scaleAspectFit
        image.frame = CGRect.init(x: 10, y: 10, width: 50, height: 50)
        
        image.layer.borderWidth = 1
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.systemPink.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
        
        return image
    }()
    
    private lazy var imageRow2: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage.init(named: "user2")
        image.contentMode = .scaleAspectFit
        image.frame = CGRect.init(x: 10, y: 10, width: 50, height: 50)
        
        image.layer.borderWidth = 1
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.systemPink.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
        
        return image
    }()
    
    private lazy var imageRow3: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage.init(named: "user3")
        image.contentMode = .scaleAspectFit
        image.frame = CGRect.init(x: 10, y: 10, width: 50, height: 50)
        
        image.layer.borderWidth = 1
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.systemPink.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
        
        return image
    }()
    
    private lazy var nameRow1: UILabel =  {
        let label = UILabel()
        label.frame = CGRect.init(x: 80, y: 10, width: self.view.frame.width - 100, height: 50)
        label.text = "Grace Courtney"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.backgroundColor = .white
        label.textAlignment = .left
        
        return label
    }()
    
    private lazy var nameRow2: UILabel =  {
        let label = UILabel()
        label.frame = CGRect.init(x: 80, y: 10, width: self.view.frame.width - 100, height: 50)
        label.text = "James Mcdowell"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.backgroundColor = .white
        label.textAlignment = .left
        
        return label
    }()
    
    private lazy var nameRow3: UILabel =  {
        let label = UILabel()
        label.frame = CGRect.init(x: 80, y: 10, width: self.view.frame.width - 100, height: 50)
        label.text = "Sheila Watson"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.backgroundColor = .white
        label.textAlignment = .left
        
        return label
    }()
    
    private lazy var starsRow1: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage.init(named: "fivestars")
        image.contentMode = .scaleAspectFit
        image.frame = CGRect.init(x: 80, y: 50, width: self.view.frame.width - 320, height: 20)
        
        return image
    }()
    
    private lazy var starsRow2: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage.init(named: "fourstars")
        image.contentMode = .scaleAspectFit
        image.frame = CGRect.init(x: 80, y: 50, width: self.view.frame.width - 320, height: 20)
    
        
        return image
    }()
    
    private lazy var starsRow3: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage.init(named: "fourstars")
        image.contentMode = .scaleAspectFit
        image.frame = CGRect.init(x: 80, y: 50, width: self.view.frame.width - 320, height: 20)
        
        return image
    }()
    
    private lazy var textRow1: UITextView = {
        let text = UITextView()
        
        text.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        text.textColor = .darkGray
        text.font = UIFont.systemFont(ofSize: 16)
        text.textAlignment = .left
        text.frame = CGRect.init(x: 0, y: 70, width: self.view.frame.width - 20, height: 75)
        text.isScrollEnabled = true
        text.isEditable = false
//        text.textContainer.maximumNumberOfLines = 3
//        text.textContainer.lineBreakMode = .byTruncatingTail
      
        return text
        
    }()
    
    private lazy var textRow2: UITextView = {
        let text = UITextView()
        
        text.text = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo."
        text.textColor = .darkGray
        text.font = UIFont.systemFont(ofSize: 16)
        text.textAlignment = .left
        text.frame = CGRect.init(x: 0, y: 70, width: self.view.frame.width - 20, height: 75)
        text.isScrollEnabled = true
        text.isEditable = false
//        text.textContainer.maximumNumberOfLines = 3
//        text.textContainer.lineBreakMode = .byTruncatingTail
      
        return text
        
    }()
    
    private lazy var textRow3: UITextView = {
        let text = UITextView()
        
        text.text = "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        text.textColor = .darkGray
        text.font = UIFont.systemFont(ofSize: 16)
        text.textAlignment = .left
        text.frame = CGRect.init(x: 0, y: 70, width: self.view.frame.width - 20, height: 75)
        text.isScrollEnabled = true
        text.isEditable = false
//        text.textContainer.maximumNumberOfLines = 3
//        text.textContainer.lineBreakMode = .byTruncatingTail
        
        return text
        
    }()
    
    
    private lazy var addReviewButton: UIButton =  {
        let btn = UIButton()
        btn.frame = CGRect.init(x: 100, y: 780, width: 200, height: 70)
        btn.setTitle("Write a review", for: .normal)
        btn.backgroundColor = .systemPink
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        btn.layer.cornerRadius = 20
        
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = .white

        self.view.addSubview(titleLabel)
        self.view.addSubview(avgReviewRating)
        self.view.addSubview(avgRatingStars)
        self.view.addSubview(reviewDesc)

        
        self.view.addSubview(reviewStack)
        self.reviewStack.addArrangedSubview(reviewRow1)
        self.reviewStack.addArrangedSubview(reviewRow2)
        self.reviewStack.addArrangedSubview(reviewRow3)
        
        self.reviewRow1.addSubview(imageRow1)
        self.reviewRow1.addSubview(nameRow1)
        self.reviewRow1.addSubview(starsRow1)
        self.reviewRow1.addSubview(textRow1)
        
        self.reviewRow2.addSubview(imageRow2)
        self.reviewRow2.addSubview(nameRow2)
        self.reviewRow2.addSubview(starsRow2)
        self.reviewRow2.addSubview(textRow2)
        
        self.reviewRow3.addSubview(imageRow3)
        self.reviewRow3.addSubview(nameRow3)
        self.reviewRow3.addSubview(starsRow3)
        self.reviewRow3.addSubview(textRow3)
        
        self.view.addSubview(addReviewButton)
        
    }
    
    @objc func pressed() {
        let alertView = UIAlertView()
        alertView.addButton(withTitle: "OK")
        alertView.title = "Not allowed"
        alertView.message = "Please purchase the product before writing a review."
        alertView.show()
    }

}

