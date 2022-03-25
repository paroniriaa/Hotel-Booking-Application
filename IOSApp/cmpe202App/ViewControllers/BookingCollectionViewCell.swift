//
//  BookingCollectionViewCell.swift
//  cmpe202App
//
//  Created by Sahib Bhatia on 4/5/22.
//

import UIKit
import CollectionViewPagingLayout
class BookingCollectionViewCell: UICollectionViewCell {
    var card: UIView!
    var hotelName: UILabel!
    var hotelLocation: UILabel!
    var price: UILabel!
    var nights: UILabel!
    var date: UILabel!
    var daysLeft: UILabel!
    var hotelImage: UIImageView!
    var sideView: UIView!
    var bookingDate: UILabel!
    var qrImage: UIImageView!
    
    var sideCard1: UIView!
    var sideCard2: UIView!
    var sideCard3: UIView!




        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        // Adjust the card view frame
        // you can use Auto-layout too
        
        let cardFrame = CGRect(
            x: 65,
            y: 130,
            width: frame.width - 130,
            height: frame.height - 260
        )
        let sideFrame = CGRect(
            x: 0,
            y: 0,
            width: 0,
            height: 0
        )
        card = UIView(frame: cardFrame)
        card.backgroundColor = .white
        card.layer.cornerRadius=20
        card.layer.masksToBounds=true
        
        sideView = UIView(frame: sideFrame)
        sideView.backgroundColor = UIColor(red: 250/255.0, green: 128/255.0, blue: 114/255.0, alpha: 1.00)
        sideView.frame=CGRect(x: globals.WIDTH(view: card)!-65, y: 0, width: 65, height: globals.HEIGHT(view: card)!)
        
        
        hotelLocation = UILabel(frame: CGRect(x: 8, y: globals.HEIGHT(view: card)!-80, width: globals.WIDTH(view: card)!-16-65, height: 60))
        hotelLocation.textAlignment = .left
        hotelLocation.font = UIFont(name: "HelveticaNeue-Medium", size: 20)
        
        hotelName = UILabel(frame: CGRect(x: 10, y: 20, width: globals.WIDTH(view: card)!-20-65, height: 70))
        hotelName.numberOfLines = 4
        hotelName.font = UIFont(name: "HelveticaNeue-Bold", size: 29)
        hotelName.textColor = UIColor.darkGray
        
        hotelImage = UIImageView(frame: CGRect(x: globals.WIDTH(view: card)!-65-150, y: globals.BOTTOM(view: hotelName)!+25, width: 150, height: 90))
        
        let path = UIBezierPath(roundedRect:hotelImage.bounds, byRoundingCorners:[.topLeft, .bottomLeft], cornerRadii: CGSize(width: 20, height: 20))
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        hotelImage.layer.mask = maskLayer
        
        
        bookingDate = UILabel(frame: CGRect(x: 10, y: globals.BOTTOM(view: hotelImage)!+40, width: globals.WIDTH(view: card)!-20-65, height: 40))
        bookingDate.numberOfLines = 0
        bookingDate.font = UIFont(name: "HelveticaNeue", size: 16)
        bookingDate.textColor = UIColor.lightGray
        
        qrImage = UIImageView(frame: CGRect(x: ((globals.WIDTH(view: card)!-65)/2)-45, y: globals.BOTTOM(view: bookingDate)!+50, width: 90, height: 90))
        
        
        
        contentView.addSubview(card)
        card.addSubview(hotelLocation)
        card.addSubview(sideView)
        card.addSubview(hotelName)
        card.addSubview(hotelImage)
        //card.addSubview(bookingId)
        card.addSubview(bookingDate)
        card.addSubview(qrImage)



        
    }
}

extension BookingCollectionViewCell: ScaleTransformView {
    var transitionType: ScaleTransformViewOptions{
        .layout(.linear)}
    
    
}

//extension BookingCollectionViewCell: TransformableView {
//    func transform(progress: CGFloat) {
//        let alpha = 1 - abs(progress)
//        contentView.alpha = alpha
//    }
//}
