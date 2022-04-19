//
//  ViewController.swift
//  Session1_homework
//
//  Created by Sabina Azimova on 16.04.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: Navbar variables
    
    private lazy var navBarStack: UIStackView = {
        let stack = UIStackView()
        
        stack.axis = .horizontal
        
        return stack
    }()
    
    private lazy var backImage: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_back")
        img.contentMode = .scaleAspectFit
        
        return img

    }()
    
    private lazy var pageLabel: UILabel =  {
        let label = UILabel()
        
        label.text = "Recently Booked"
        label.textColor = .black
        label.font = UIFont(name: "Urbanist-SemiBold", size: 24)
        label.textAlignment = .center
//        label.numberOfLines = 1;
//        label.minimumScaleFactor = 0.7;
//        label.adjustsFontSizeToFitWidth = true;

        return label
    }()
    
    private lazy var listImage: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_list")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    private lazy var gridImage: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_grid")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    // MARK: Scrollview variables
    
//    private lazy var contentViewSize = CGSize.init(
//        width: self.view.frame.width,
//        height: self.view.frame.height + 400)
//
//    private lazy var scrollView: UIScrollView = {
//       let view = UIScrollView()
//
//       view.translatesAutoresizingMaskIntoConstraints = false
//       view.backgroundColor = .red
//       view.frame = self.view.bounds
//       view.contentSize = contentViewSize
//
//       return view
//      }()
//
//    private lazy var contentView: UIView = {
//        let contentView = UIView()
//           contentView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.backgroundColor = .systemBlue
//        contentView.frame.size = contentViewSize
//           return contentView
//       }()
    
    private lazy var hotelStack: UIStackView = {
        let stack = UIStackView()
        
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 20
        
        return stack
    }()
    
    private lazy var viewChild1: UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.backgroundColor = .white
        
        return view
        }()
    
    private lazy var viewChild2: UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.backgroundColor = .white
     
        return view
        }()
    
    private lazy var viewChild3: UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.backgroundColor = .white
     
        return view
        }()
    
    private lazy var viewChild4: UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.backgroundColor = .white
     
        return view
        }()
    
    private lazy var viewChild5: UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.backgroundColor = .white
        
        return view
        }()
    
    //MARK: Child 1 properties:
    
    private lazy var hotelPhoto: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "hotel_president")
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        
        return img
    }()
    
    private lazy var hotelLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "President Hotel"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 20)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var locationLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "Paris, France"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 15)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var priceLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "$35"
        lbl.font = UIFont(name: "Urbanist-Bold", size: 24)
        lbl.textColor = UIColor.init(red: 83/255, green: 182/255, blue: 94/255, alpha: 1)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var nightLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "/ night"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 10)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var starImage: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_star")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    private lazy var ratingLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "4.8"
        lbl.font = UIFont(name: "Urbanist-Bold", size: 14)
        lbl.textColor = UIColor.init(red: 83/255, green: 182/255, blue: 94/255, alpha: 1)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var reviewLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "(4,378 reviews)"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 13)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var bookmarkSelectedImage: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_bookmarkSelected")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    
    //MARK: Child 2 properties:
    
    private lazy var hotelPhoto2: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "hotel_palms")
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        
        return img
    }()
    
    private lazy var hotelLabel2: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "Palms Casino"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 20)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var locationLabel2: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "Amsterdam, Netherlands"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 15)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var priceLabel2: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "$29"
        lbl.font = UIFont(name: "Urbanist-Bold", size: 24)
        lbl.textColor = UIColor.init(red: 83/255, green: 182/255, blue: 94/255, alpha: 1)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.5;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var nightLabel2: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "/ night"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 10)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var starImage2: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_star")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    private lazy var ratingLabel2: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "4.9"
        lbl.font = UIFont(name: "Urbanist-Bold", size: 14)
        lbl.textColor = UIColor.init(red: 83/255, green: 182/255, blue: 94/255, alpha: 1)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var reviewLabel2: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "(5,283 reviews)"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 13)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    
    private lazy var bookmarkNotSelectedImage2: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_bookmarkNotSelected")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    //MARK: Child 3 properties:
    
    private lazy var hotelPhoto3: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "hotel_palazzo")
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        
        return img
    }()
    
    private lazy var hotelLabel3: UILabel = {
        let lbl = UILabel()
        lbl.text = "Palazzo Versace"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 20)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
//
        return lbl
    }()
    
    private lazy var locationLabel3: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "Rome, Italia"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 15)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var priceLabel3: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "$36"
        lbl.font = UIFont(name: "Urbanist-Bold", size: 24)
        lbl.textColor = UIColor.init(red: 83/255, green: 182/255, blue: 94/255, alpha: 1)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var nightLabel3: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "/ night"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 10)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var starImage3: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_star")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    private lazy var ratingLabel3: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "4.7"
        lbl.font = UIFont(name: "Urbanist-Bold", size: 14)
        lbl.textColor = UIColor.init(red: 83/255, green: 182/255, blue: 94/255, alpha: 1)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var reviewLabel3: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "(3,277 reviews)"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 13)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var bookmarkSelectedImage3: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_bookmarkSelected")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    
    
    //MARK: Child 4 properties:
    
    private lazy var hotelPhoto4: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "hotel_bulgari")
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        
        return img
    }()
    
    private lazy var hotelLabel4: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "Bulgari Resort"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 20)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var locationLabel4: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "Istanbul, Turkiye"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 15)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var priceLabel4: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "$27"
        lbl.font = UIFont(name: "Urbanist-Bold", size: 24)
        lbl.textColor = UIColor.init(red: 83/255, green: 182/255, blue: 94/255, alpha: 1)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var nightLabel4: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "/ night"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 10)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var starImage4: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_star")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    private lazy var ratingLabel4: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "4.8"
        lbl.font = UIFont(name: "Urbanist-Bold", size: 14)
        lbl.textColor = UIColor.init(red: 83/255, green: 182/255, blue: 94/255, alpha: 1)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var reviewLabel4: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "(4,981 reviews)"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 13)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    
    private lazy var bookmarkNotSelectedImage4: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_bookmarkNotSelected")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    
    //MARK: Child 5 properties:
    
    private lazy var hotelPhoto5: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "hotel_martinez")
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        
        return img
    }()
    
    private lazy var hotelLabel5: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "Martinez Cannes"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 20)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var locationLabel5: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "London, United Kingdom"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 15)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var priceLabel5: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "$32"
        lbl.font = UIFont(name: "Urbanist-Bold", size: 24)
        lbl.textColor = UIColor.init(red: 83/255, green: 182/255, blue: 94/255, alpha: 1)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var nightLabel5: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "/ night"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 10)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var starImage5: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_star")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    private lazy var ratingLabel5: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "4.6"
        lbl.font = UIFont(name: "Urbanist-Bold", size: 14)
        lbl.textColor = UIColor.init(red: 83/255, green: 182/255, blue: 94/255, alpha: 1)
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    private lazy var reviewLabel5: UILabel = {
        let lbl = UILabel()
        
        lbl.text = "(3,672 reviews)"
        lbl.font = UIFont(name: "Urbanist-SemiBold", size: 13)
        lbl.textColor = .lightGray
//        lbl.numberOfLines = 1;
//        lbl.minimumScaleFactor = 0.7;
//        lbl.adjustsFontSizeToFitWidth = true;
        
        return lbl
    }()
    
    
    private lazy var bookmarkNotSelectedImage5: UIImageView = {
        let img = UIImageView()
        
        img.image = UIImage.init(named: "ic_bookmarkNotSelected")
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1)
        
        
        //MARK: Navigation Bar constraints
        self.view.addSubview(navBarStack)
        self.navBarStack.addArrangedSubview(backImage)
        self.navBarStack.addArrangedSubview(pageLabel)
        self.navBarStack.addArrangedSubview(listImage)
        self.navBarStack.addArrangedSubview(gridImage)
        
        self.navBarStack.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(50)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-20)
            make.height.equalTo(25)
    }
        
        self.backImage.snp.makeConstraints { make in
            make.top.equalTo(self.navBarStack.snp.top)
            make.left.equalTo(self.navBarStack.snp.left)
            make.height.width.equalTo(25)
    }

        self.pageLabel.snp.makeConstraints { make in
            make.top.equalTo(self.navBarStack.snp.top)
            make.left.equalTo(self.backImage.snp.left).offset(-20)
            make.width.equalTo(250)
            make.centerY.equalTo(self.navBarStack.snp.centerY)
    }

        self.listImage.snp.makeConstraints { make in
            make.top.equalTo(navBarStack.snp.top)
            make.height.width.equalTo(25)
    }

        self.gridImage.snp.makeConstraints { make in
            make.top.equalTo(navBarStack.snp.top)
            make.left.equalTo(listImage.snp.right).offset(20)
            make.right.equalTo(self.navBarStack.snp.right)
            make.height.width.equalTo(25)
    }
        
        
        //MARK: Scrollview constraints
        
        
//        self.view.addSubview(scrollView)
//
//        self.scrollView.snp.makeConstraints { make in
//
//            make.top.equalTo(self.navBarStack.snp.bottom).offset(45)
//            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
//            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-20)
//            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
//           // scrollView.contentSize = contentView.frame.size
//
//        }
//
//        self.scrollView.addSubview(contentView)
//
//        self.contentView.snp.makeConstraints { make in
//
//            make.top.equalTo(self.scrollView)
//            make.left.equalTo(self.scrollView)
//            make.right.equalTo(self.scrollView)
//            make.bottom.equalTo(self.scrollView)
//                }
        self.view.addSubview(hotelStack)
        
        self.hotelStack.snp.makeConstraints { make in
            make.top.equalTo(self.navBarStack.snp.bottom).offset(45)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-20)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
        
        self.hotelStack.addArrangedSubview(viewChild1)
        self.hotelStack.addArrangedSubview(viewChild2)
        self.hotelStack.addArrangedSubview(viewChild3)
        self.hotelStack.addArrangedSubview(viewChild4)
        self.hotelStack.addArrangedSubview(viewChild5)

        
        //MARK: Child 1
        self.viewChild1.addSubview(hotelPhoto)
        self.viewChild1.addSubview(hotelLabel)
        self.viewChild1.addSubview(priceLabel)
        self.viewChild1.addSubview(locationLabel)
        self.viewChild1.addSubview(nightLabel)
        self.viewChild1.addSubview(starImage)
        self.viewChild1.addSubview(ratingLabel)
        self.viewChild1.addSubview(reviewLabel)
        self.viewChild1.addSubview(bookmarkSelectedImage)
        
        self.hotelPhoto.snp.makeConstraints { make in
            make.top.equalTo(self.viewChild1.snp.top).offset(20)
            make.left.equalTo(self.viewChild1.snp.left).offset(20)
            make.height.width.equalTo(100)
        }

        self.hotelLabel.snp.makeConstraints { make in
            make.top.equalTo(self.hotelPhoto.snp.top).offset(5)
            make.left.equalTo(self.hotelPhoto.snp.right).offset(20)
//            make.right.equalTo(self.priceLabel.snp.left).offset(-5)
        }

        self.locationLabel.snp.makeConstraints { make in
            make.top.equalTo(self.hotelLabel.snp.bottom).offset(5)
            make.left.equalTo(self.hotelPhoto.snp.right).offset(20)
//            make.right.equalTo(self.nightLabel.snp.left).offset(-5)
            make.centerY.equalTo(hotelPhoto.snp.centerY)
        }

        self.starImage.snp.makeConstraints { make in
            make.left.equalTo(self.hotelPhoto.snp.right).offset(20)
            make.top.equalTo(self.locationLabel.snp.bottom).offset(15)
            make.height.width.equalTo(12)
        }

        self.ratingLabel.snp.makeConstraints { make in
            make.left.equalTo(self.starImage.snp.right).offset(5)
            make.centerY.equalTo(starImage.snp.centerY)
        }

        self.reviewLabel.snp.makeConstraints { make in
            make.left.equalTo(self.ratingLabel.snp.right).offset(8)
//            make.right.equalTo(self.bookmarkSelectedImage.snp.left).offset(-5)
            make.centerY.equalTo(starImage.snp.centerY)
        }

        self.priceLabel.snp.makeConstraints { make in
            make.centerY.equalTo(hotelLabel.snp.centerY)
            make.right.equalTo(self.viewChild1.snp.right).offset(-20)
        }

        self.nightLabel.snp.makeConstraints { make in
            make.top.equalTo(self.priceLabel.snp.bottom).offset(5)
            make.right.equalTo(self.viewChild1.snp.right).offset(-20)
        }

        self.bookmarkSelectedImage.snp.makeConstraints { make in
            make.centerY.equalTo(starImage.snp.centerY)
            make.right.equalTo(self.viewChild1.snp.right).offset(-20)
            make.height.width.equalTo(20)
        }
        
        //MARK: Child 2
        self.viewChild2.addSubview(hotelPhoto2)
        self.viewChild2.addSubview(hotelLabel2)
        self.viewChild2.addSubview(priceLabel2)
        self.viewChild2.addSubview(locationLabel2)
        self.viewChild2.addSubview(nightLabel2)
        self.viewChild2.addSubview(starImage2)
        self.viewChild2.addSubview(ratingLabel2)
        self.viewChild2.addSubview(reviewLabel2)
        self.viewChild2.addSubview(bookmarkNotSelectedImage2)


        self.hotelPhoto2.snp.makeConstraints { make in
            make.top.equalTo(self.viewChild2.snp.top).offset(20)
            make.left.equalTo(self.viewChild2.snp.left).offset(20)
            make.height.width.equalTo(100)
        }

        self.hotelLabel2.snp.makeConstraints { make in
            make.top.equalTo(self.hotelPhoto2.snp.top).offset(5)
            make.left.equalTo(self.hotelPhoto2.snp.right).offset(20)
//            make.right.equalTo(self.priceLabel2.snp.left).offset(-5)
        }

        self.locationLabel2.snp.makeConstraints { make in
            make.top.equalTo(self.hotelLabel2.snp.bottom).offset(5)
            make.left.equalTo(self.hotelPhoto2.snp.right).offset(20)
//            make.right.equalTo(self.nightLabel2.snp.left).offset(-5)
            make.centerY.equalTo(hotelPhoto2.snp.centerY)
        }

        self.starImage2.snp.makeConstraints { make in
            make.left.equalTo(self.hotelPhoto2.snp.right).offset(20)
            make.top.equalTo(self.locationLabel2.snp.bottom).offset(15)
            make.height.width.lessThanOrEqualTo(12)
        }

        self.ratingLabel2.snp.makeConstraints { make in
            make.left.equalTo(self.starImage2.snp.right).offset(5)
            make.centerY.equalTo(starImage2.snp.centerY)
        }

        self.reviewLabel2.snp.makeConstraints { make in
            make.left.equalTo(self.ratingLabel2.snp.right).offset(8)
//            make.right.equalTo(self.bookmarkNotSelectedImage2.snp.left).offset(-5)
            make.centerY.equalTo(starImage2.snp.centerY)
        }

        self.priceLabel2.snp.makeConstraints { make in
            make.centerY.equalTo(hotelLabel2.snp.centerY)
            make.right.equalTo(self.viewChild2.snp.right).offset(-20)
        }

        self.nightLabel2.snp.makeConstraints { make in
            make.top.equalTo(self.priceLabel2.snp.bottom).offset(5)
            make.right.equalTo(self.viewChild2.snp.right).offset(-20)
        }

        self.bookmarkNotSelectedImage2.snp.makeConstraints { make in
            make.centerY.equalTo(starImage2.snp.centerY)
            make.right.equalTo(self.viewChild2.snp.right).offset(-20)
            make.height.width.lessThanOrEqualTo(20)
        }
       
        //MARK: Child 3
        self.viewChild3.addSubview(hotelPhoto3)
        self.viewChild3.addSubview(hotelLabel3)
        self.viewChild3.addSubview(priceLabel3)
        self.viewChild3.addSubview(locationLabel3)
        self.viewChild3.addSubview(nightLabel3)
        self.viewChild3.addSubview(starImage3)
        self.viewChild3.addSubview(ratingLabel3)
        self.viewChild3.addSubview(reviewLabel3)
        self.viewChild3.addSubview(bookmarkSelectedImage3)


        self.hotelPhoto3.snp.makeConstraints { make in
            make.top.equalTo(self.viewChild3.snp.top).offset(20)
            make.left.equalTo(self.viewChild3.snp.left).offset(20)
            make.height.width.equalTo(100)
        }

        self.hotelLabel3.snp.makeConstraints { make in
            make.top.equalTo(self.hotelPhoto3.snp.top).offset(5)
            make.left.equalTo(self.hotelPhoto3.snp.right).offset(20)
//            make.right.equalTo(self.priceLabel3.snp.left).offset(-5)
        }

        self.locationLabel3.snp.makeConstraints { make in
            make.top.equalTo(self.hotelLabel3.snp.bottom).offset(5)
            make.left.equalTo(self.hotelPhoto3.snp.right).offset(20)
//            make.right.equalTo(self.nightLabel3.snp.left).offset(-5)
            make.centerY.equalTo(hotelPhoto3.snp.centerY)
        }

        self.starImage3.snp.makeConstraints { make in
            make.left.equalTo(self.hotelPhoto3.snp.right).offset(20)
            make.top.equalTo(self.locationLabel3.snp.bottom).offset(15)
            make.height.width.equalTo(12)
        }

        self.ratingLabel3.snp.makeConstraints { make in
            make.left.equalTo(self.starImage3.snp.right).offset(5)
            make.centerY.equalTo(starImage3.snp.centerY)
        }

        self.reviewLabel3.snp.makeConstraints { make in
            make.left.equalTo(self.ratingLabel3.snp.right).offset(8)
//            make.right.equalTo(self.bookmarkSelectedImage3.snp.left).offset(-5)
            make.centerY.equalTo(starImage3.snp.centerY)
        }

        self.priceLabel3.snp.makeConstraints { make in
            make.centerY.equalTo(hotelLabel3.snp.centerY)
            make.right.equalTo(self.viewChild3.snp.right).offset(-20)
        }


        self.nightLabel3.snp.makeConstraints { make in
            make.top.equalTo(self.priceLabel3.snp.bottom).offset(5)
            make.right.equalTo(self.viewChild3.snp.right).offset(-20)
        }

        self.bookmarkSelectedImage3.snp.makeConstraints { make in
            make.centerY.equalTo(starImage3.snp.centerY)
            make.right.equalTo(self.viewChild3.snp.right).offset(-20)
            make.height.width.equalTo(20)
        }
        
        //MARK: Child 4
        self.viewChild4.addSubview(hotelPhoto4)
        self.viewChild4.addSubview(hotelLabel4)
        self.viewChild4.addSubview(priceLabel4)
        self.viewChild4.addSubview(locationLabel4)
        self.viewChild4.addSubview(nightLabel4)
        self.viewChild4.addSubview(starImage4)
        self.viewChild4.addSubview(ratingLabel4)
        self.viewChild4.addSubview(reviewLabel4)
        self.viewChild4.addSubview(bookmarkNotSelectedImage4)


        self.hotelPhoto4.snp.makeConstraints { make in
            make.top.equalTo(self.viewChild4.snp.top).offset(20)
            make.left.equalTo(self.viewChild4.snp.left).offset(20)
            make.height.width.equalTo(100)
        }

        self.hotelLabel4.snp.makeConstraints { make in
            make.top.equalTo(self.hotelPhoto4.snp.top).offset(5)
            make.left.equalTo(self.hotelPhoto4.snp.right).offset(20)
//            make.right.equalTo(self.priceLabel4.snp.left).offset(-5)
        }

        self.locationLabel4.snp.makeConstraints { make in
            make.top.equalTo(self.hotelLabel4.snp.bottom).offset(5)
            make.left.equalTo(self.hotelPhoto4.snp.right).offset(20)
//            make.right.equalTo(self.nightLabel4.snp.left).offset(-5)
            make.centerY.equalTo(hotelPhoto4.snp.centerY)
        }

        self.starImage4.snp.makeConstraints { make in
            make.left.equalTo(self.hotelPhoto4.snp.right).offset(20)
            make.top.equalTo(self.locationLabel4.snp.bottom).offset(15)
            make.height.width.equalTo(12)
        }

        self.ratingLabel4.snp.makeConstraints { make in
            make.left.equalTo(self.starImage4.snp.right).offset(5)
            make.centerY.equalTo(starImage4.snp.centerY)
        }

        self.reviewLabel4.snp.makeConstraints { make in
            make.left.equalTo(self.ratingLabel4.snp.right).offset(8)
//            make.right.equalTo(self.bookmarkNotSelectedImage4.snp.left).offset(-5)
            make.centerY.equalTo(starImage4.snp.centerY)
        }

        self.priceLabel4.snp.makeConstraints { make in
            make.centerY.equalTo(hotelLabel4.snp.centerY)
            make.right.equalTo(self.viewChild4.snp.right).offset(-20)
        }

        self.nightLabel4.snp.makeConstraints { make in
            make.top.equalTo(self.priceLabel4.snp.bottom).offset(5)
            make.right.equalTo(self.viewChild4.snp.right).offset(-20)
        }

        self.bookmarkNotSelectedImage4.snp.makeConstraints { make in
            make.centerY.equalTo(starImage4.snp.centerY)
            make.right.equalTo(self.viewChild4.snp.right).offset(-20)
            make.height.width.equalTo(20)
        }

        //MARK: Child 5
        self.viewChild5.addSubview(hotelPhoto5)
        self.viewChild5.addSubview(hotelLabel5)
        self.viewChild5.addSubview(priceLabel5)
        self.viewChild5.addSubview(locationLabel5)
        self.viewChild5.addSubview(nightLabel5)
        self.viewChild5.addSubview(starImage5)
        self.viewChild5.addSubview(ratingLabel5)
        self.viewChild5.addSubview(reviewLabel5)
        self.viewChild5.addSubview(bookmarkNotSelectedImage5)


        self.hotelPhoto5.snp.makeConstraints { make in
            make.top.equalTo(self.viewChild5.snp.top).offset(20)
            make.left.equalTo(self.viewChild5.snp.left).offset(20)
            make.height.width.equalTo(100)
        }

        self.hotelLabel5.snp.makeConstraints { make in
            make.top.equalTo(self.hotelPhoto5.snp.top).offset(5)
            make.left.equalTo(self.hotelPhoto5.snp.right).offset(20)
//            make.right.equalTo(self.priceLabel5.snp.left).offset(-5)
        }

        self.locationLabel5.snp.makeConstraints { make in
            make.top.equalTo(self.hotelLabel5.snp.bottom).offset(5)
            make.left.equalTo(self.hotelPhoto5.snp.right).offset(20)
//            make.right.equalTo(self.nightLabel5.snp.left).offset(-5)
            make.centerY.equalTo(hotelPhoto5.snp.centerY)
        }

        self.starImage5.snp.makeConstraints { make in
            make.left.equalTo(self.hotelPhoto5.snp.right).offset(20)
            make.top.equalTo(self.locationLabel5.snp.bottom).offset(15)
            make.height.width.equalTo(12)
        }

        self.ratingLabel5.snp.makeConstraints { make in
            make.left.equalTo(self.starImage5.snp.right).offset(5)
            make.centerY.equalTo(starImage5.snp.centerY)
        }

        self.reviewLabel5.snp.makeConstraints { make in
            make.left.equalTo(self.ratingLabel5.snp.right).offset(8)
//            make.right.equalTo(self.bookmarkNotSelectedImage5.snp.left).offset(-5)
            make.centerY.equalTo(starImage5.snp.centerY)
        }

        self.priceLabel5.snp.makeConstraints { make in
            make.centerY.equalTo(hotelLabel5.snp.centerY)
            make.right.equalTo(self.viewChild5.snp.right).offset(-20)
        }

        self.nightLabel5.snp.makeConstraints { make in
            make.top.equalTo(self.priceLabel5.snp.bottom).offset(5)
            make.right.equalTo(self.viewChild5.snp.right).offset(-20)
        }

        self.bookmarkNotSelectedImage5.snp.makeConstraints { make in
            make.centerY.equalTo(starImage5.snp.centerY)
            make.right.equalTo(self.viewChild5.snp.right).offset(-20)
            make.height.width.equalTo(20)
        }
        
    }

}
