//
//  ViewController.swift
//  GitHubManager
//
//  Created by User on 23.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
//    var scrollView: UIScrollView = UIScrollView()
//
//    var contentView: UIView = UIView()

    private let collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        collectionView.backgroundColor = .red
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
//        collectionView.delegate = self
//        collectionView.register(DefaultCollectionViewCell.self, forCellWithReuseIdentifier: DefaultCollectionViewCell.identifier)
//        collectionView.dataSource = self
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
        
        let label3 = UILabel()
        label3.numberOfLines = 0
        label3.text = "efwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrlwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrlwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrlwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrlwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrlwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrlwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrlwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrlwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrlwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrlwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrlefwkfwrkgwrkgwrkglwrglwrgwrl;gwr;lkgwrlkgklwr;gl;wrg;lwrkl;gwrkl;gwrlkgl;wr"
        contentView.addSubview(label3)
        label3.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(label2.snp.bottom).offset(20)
        }
        
        
//        contentView.addSubview(collectionView)
//        collectionView.snp.makeConstraints { make in
//            make.leading.trailing.equalToSuperview().inset(20)
//            make.top.equalTo(label2.snp.bottom).offset(20)
//        }
//
        let footer = UIButton(configuration: .filled())
        footer.setTitle("button", for: .normal)
        contentView.addSubview(footer)
        footer.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview().inset(20)
            make.top.greaterThanOrEqualTo(label3.snp.bottom).offset(40)
        }
        

    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DefaultCollectionViewCell.identifier, for: indexPath)
        cell.backgroundColor = .blue
        return cell
    }
    
    
}
