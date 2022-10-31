//
//  CoursesViewController.swift
//  MyAppUIKit
//
//  Created by Angelica dos Santos on 31/10/22.
//

import UIKit

public protocol DataFetchable {
    func fetchCoursesNames(completion: @escaping ([String]) -> Void)
}

public class CoursesViewController: UIViewController {

    let dataFetchable: DataFetchable
    
    public init(dataFetchable: DataFetchable) {
        self.dataFetchable = dataFetchable
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        dataFetchable.fetchCoursesNames { courses in
            print(courses)
        }
    }
}
