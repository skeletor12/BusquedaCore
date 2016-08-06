//
//  DetailViewController.swift
//  BusquedaCore
//
//  Created by Luis Rodriguez on 05/08/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {



    @IBOutlet weak var ISBN: UILabel!
    @IBOutlet weak var titulo: UITextView!
    @IBOutlet weak var autor: UILabel!
    @IBOutlet weak var portada: UIImageView!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.ISBN {
                ISBN.text = detail.valueForKey("isbn")!.description
                titulo.text = detail.valueForKey("titulo")!.description
                autor.text = detail.valueForKey("autor")!.description
                portada.image = UIImage(data: detail.valueForKey("portada") as! NSData)
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "INFORMACION DEL LIBRO"
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

