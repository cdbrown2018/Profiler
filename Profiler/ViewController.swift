//
//  ViewController.swift
//  Profiler
//
//  Created by cbrown on 6/4/18.
//  Copyright © 2018 Christopher Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblDOB: UILabel!
    @IBOutlet weak var imgPic: UIImageView!
    @IBOutlet weak var txtNotes: UITextView!

    var student: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            student = Person(firstName: "Christopher", lastName: "Brown", dob: nil, image: nil, notes: "Very well behaved")
        if let person = student {
            lblFirstName.text = person.firstName
            lblLastName.text = person.lastName
            if let date = person.dob {
                lblDOB.text = date.description
            } else {
                lblDOB.text = ""
            }
            if let img = person.image {
                imgPic.image = img
            } else {
                person.image = UIImage(named: "Profile")
                imgPic.image = UIImage(named: "Profile")
            }
            if let studentNotes = person.notes {
                txtNotes.text = studentNotes
            }
            
            self.title = "\(person.firstName) \(person.lastName)"
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let person = student {
            lblFirstName.text = person.firstName
            lblLastName.text = person.lastName
            if let date = person.dob {
                lblDOB.text = date.description
            } else {
                lblDOB.text = ""
            }
            if let img = person.image {
                imgPic.image = img
            }
            if let studentNotes = person.notes {
                txtNotes.text = studentNotes
            }
            
            self.title = "\(person.firstName) \(person.lastName)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editImage(_ sender: UIImageView) {
        print("This is a test.")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? EditViewController {
            destinationViewController.person = student
        }
    }
    
}

