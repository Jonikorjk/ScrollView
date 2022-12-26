//
//  ViewController.swift
//  GitHubManager
//
//  Created by User on 23.12.2022.
//

import UIKit
import SnapKit

enum LayoutConstants {
    static let spacing: CGFloat = 16.0
    static let itemsInSection: CGFloat = 2.0
    static let heightItem: CGFloat = 150
}

class ViewController: UIViewController {
    
    var elements = 7
    
    var collectionViewHeight: Float {
        var k: Float
        if (elements % 2 != 0) {
            k = Float(elements + 1) / Float(2)
        } else {
            k = Float(elements) / Float(2)
        }
//        print(Float(view.frame.width - 40) / 2)
        return (k * Float(view.frame.width - 40) / 2) + Float((k + 1) * Float(LayoutConstants.spacing))
    }
    
    private let collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        collectionView.backgroundColor = .blue
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        collectionView.delegate = self
        collectionView.register(DefaultCollectionViewCell.self, forCellWithReuseIdentifier: DefaultCollectionViewCell.identifier)
        collectionView.dataSource = self
        layout()
    }
    
    func layout() {
        let scrollView = UIScrollView()
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { (make) in
            make.leading.trailing.top.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
        let contentView = UIView()
        contentView.backgroundColor = .green
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { (make) in
            make.leading.trailing.top.bottom.equalToSuperview()
            make.height.equalToSuperview().priority(250)
            make.width.equalToSuperview()
        }
        
        let label1 = UILabel()
        label1.text = "efwkfwrkgwrkgwrkglwrglwrgwrl;gwr;lkgwrlkgklwr;gl;wrg;lwrkl;gwrkl;gwrlkgl;wr"
        contentView.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.leading.top.trailing.equalToSuperview().inset(20)
        }

        
        let label2 = UILabel()
        label2.text = "efwkfwrkgwrkgwrkglwrglwrgwrl;gwr;lkgwrlkgklwr;gl;wrg;lwrkl;gwrkl;gwrlkgl;wr"
        contentView.addSubview(label2)
        label2.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(label1.snp.bottom).offset(60)
        }
        
        contentView.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(label2.snp.bottom).offset(40)
            make.height.equalTo(collectionViewHeight)
        }

        let footer = UIButton(configuration: .filled())
        footer.setTitle("button", for: .normal)
        contentView.addSubview(footer)
        footer.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview().inset(20)
            make.top.greaterThanOrEqualTo(collectionView.snp.bottom).offset(40)
        }
        

    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if elements <= 0 {
            fatalError(">0")
        }
        return elements
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DefaultCollectionViewCell.identifier, for: indexPath)
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: LayoutConstants.spacing, left: LayoutConstants.spacing, bottom: LayoutConstants.spacing, right: LayoutConstants.spacing)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return LayoutConstants.spacing
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return LayoutConstants.spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = itemWidth(for: collectionView.frame.width, spacing: 16)
        return CGSize(width: width, height: LayoutConstants.heightItem)
    }
    
    func itemWidth(for width: CGFloat, spacing: CGFloat) -> CGFloat {
        let itemsInRow: CGFloat = LayoutConstants.itemsInSection

        let totalSpacing: CGFloat = 2 * spacing + (itemsInRow - 1) * spacing
        let finalWidth = (width - totalSpacing) / itemsInRow

//        return finalWidth - 5.0
        return finalWidth
    }
}
