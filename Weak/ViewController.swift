//
//  ViewController.swift
//  Weak
//
//  Created by admin on 1/2/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    weak var vC1: ViewController1?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        vC1 = segue.destination as? ViewController1
    }
    
    func whatSub() {
        
    }
    
}

class ViewController1: UIViewController {
    
      var viewController: ViewController?
     weak var vC2: ViewController2?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        vC2 = segue.destination as? ViewController2
        viewController?.vC1 = self
    }
    
    deinit {
        print("ViewController1 da bi huy")
    }
    
    @IBAction func back1(_ sender: UIButton) {
        viewController?.whatSub()
        dismiss(animated: true, completion: nil)
    }
    
}

class ViewController2: UIViewController {

    weak var vC1: ViewController1?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        vC1 = segue.destination as? ViewController1
        vC1?.vC2 = self
    }
    
    deinit {
        print("ViewController2 da bi huy")
    }
    @IBAction func back2(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}








