//
//  DetailViewController.swift
//  EveryDoItAgain
//
//  Created by Mike Cameron on 2018-05-15.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detailItem?.todoDescription
            }
        }
        if let title = detailItem {
            if let label = titleLabel {
                label.text = detailItem?.title
            }
        }
        if let detail = detailItem {
            if let label = priorityLabel {
                label.text = String(format: "%d", (detailItem?.priorityNumber)!)
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Todo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

